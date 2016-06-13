#!/usr/bin/env python3
"""
VoiceCode Command Parser

    parse your voicecode commands for exporting

by: Casey Link @Ramblurr

usage: VoiceCode Command Parser [-h] (--anki | --cheatset)
                                [--url URL | --csv CSV]
                                [tags [tags ...]]

positional arguments:
  tags        zero or more tags to export, if none are provided, all commands
              will be exported

optional arguments:
  -h, --help  show this help message and exit
  --anki      anki output: produce a csv file suitable for importing into anki
  --cheatset  cheatsheet output: produce ruby output suitable for creating a
              Dash docset from (via cheatset)
  --url URL   URL to the VoiceCode commands page (must be accessible, default:
              http://commando:5000/commands)
  --csv CSV   Instead of scraping the commands page, use a provided csv file
"""

import sys
import csv
import argparse
import io
import os.path
import time
from string import Template


def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)

try:
    from selenium import webdriver
except Exception as e:
    eprint("You must install the python 3 selenium module")
    eprint("\t pip3 install selenium")
    sys.exit(1)

COMMANDS_URL='http://commando:5000/commands'

def scrape_commands(url):
    try:
        driver = webdriver.PhantomJS()
        driver.set_window_size(1120, 550)
        driver.get(url)

        script = ''
        time.sleep(1)
        with open('./table-export.js', 'r') as f:
            script = f.read()
        output = driver.execute_script(script)
        return output
    except Exception as e:
        eprint("Couldn't parse your commands page at %s" % (url))
        sys.exit(1)



def parse_commands(source):
    reader = None
    if os.path.isfile(source):
        try:
            f = open(source, 'r')
            reader = csv.DictReader(f)
        finally:
            f.close()
    else:
        commands = scrape_commands(source)
        reader = csv.DictReader(io.StringIO(commands))

    commands_by_tag = {}
    for row in reader:
        # removes internal whitespace
        tags = " ".join(row['Tags'].strip().split()).split()
        for tag in tags:
            if tag not in commands_by_tag:
                commands_by_tag[tag] = []
            commands_by_tag[tag].append(row)

    return commands_by_tag


def cheatset(source, tags):

    t_entry = Template('''    entry do
          command '$command'
          name <<-'END'
            $name
          END
          notes  <<-'END'
              $notes
          END
        end
    ''')

    t_cat = Template('''  category do
        id '$name'

        $entries

      end''')

    def make_entry(cmd, name, notes):
        return t_entry.substitute(command=cmd, name=name, notes=notes)

    def make_category(name, entries):
        return t_cat.substitute(name=name.title(), entries=entries)

    commands_by_tag = parse_commands(source)

    print('''
    cheatsheet do
      title 'voicecode'
      docset_file_name'voicecode'
      keyword 'vc'
        ''')
    if len(tags) == 0:
        tags = commands_by_tag.keys()
    for tag in tags:
        print("")
        entries = " ".join(map( lambda row: make_entry(row['Name'], row['Description'], row['Actions']), commands_by_tag[tag]))
        cat = make_category(tag, entries)
        print(cat)

    print("notes 'VoiceCode docset by Casey Link @Ramblurr'")
    print("end")

def anki(source, tags):
    commands_by_tag = parse_commands(source)

    t_row = Template('$command\t"$description"\t$grammar\t"$actions"\t$tags\n')
    def make_row(row):
        return t_row.substitute(command=row["Name"], description=row["Description"], grammar=row["Grammar Type"], actions=row["Actions"], tags=row["Tags"])

    if len(tags) == 0:
        tags = commands_by_tag.keys()
    for tag in tags:
        rows = "".join(map( lambda row: make_row(row), commands_by_tag[tag]))
        print(rows)


def main():
    parser = argparse.ArgumentParser(prog='VoiceCode Command Parser')
    group = parser.add_mutually_exclusive_group(required=True)
    group.add_argument('--anki', action='store_true', help="anki output: produce a csv file suitable for importing into anki")
    group.add_argument('--cheatset', action='store_true', help='cheatsheet output: produce ruby output suitable for creating a Dash docset from (via cheatset)')

    url_help = 'URL to the VoiceCode commands page (must be accessible, default: %s)' % (COMMANDS_URL)
    src_group = parser.add_mutually_exclusive_group()
    src_group.add_argument('--url', help=url_help)
    src_group.add_argument('--csv', help='Instead of scraping the commands page, use a provided csv file')
    parser.add_argument('tags', nargs='*', help='zero or more tags to export, if none are provided, all commands will be exported')

    args= parser.parse_args()

    source = args.url if args.url else args.csv if args.csv else COMMANDS_URL

    tags = args.tags
    if args.anki:
        anki(source, tags)
    elif args.cheatset:
        cheatset(source, tags)

if __name__ == "__main__":
    main()
