
cheatsheet do
  title 'voicecode'
  docset_file_name'voicecode'
  keyword 'vc'
    

  category do
    id 'recommended'

        entry do
      command 'restart dragon'
      name <<-'END'
        restarts Dragon Dictate
      END
      notes  <<-'END'
          applescript: tell application “undefined“ to quit
delay 2
tell application “undefined“ to activate
      END
    end
     entry do
      command 'dragtrain'
      name <<-'END'
        Train Dragon vocabulary from selection
      END
      notes  <<-'END'
          applescript: try
  tell application “Dragon“
    --train vocabulary from selection
    «event DctaVTrn» given «class trno»:«constant CSRpTsSe»
  end tell
end try
      END
    end
     entry do
      command 'show dragon vocab'
      name <<-'END'
        switch to Dragon Dictate, and open vocabulary window
      END
      notes  <<-'END'
          applescript: try
  tell application “Dragon“
    «event DctaEVob»
  end tell
end try
      END
    end
     entry do
      command 'show dragon commands'
      name <<-'END'
        switch to Dragon Dictate, and open commands window
      END
      notes  <<-'END'
          applescript: try
  tell application “Dragon“
    «event DctaManC»
  end tell
end try
      END
    end
     entry do
      command 'over and out'
      name <<-'END'
        turn the microphone off. This command is nice because it is 'chainable' in a phrase
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'creek'
      name <<-'END'
        repeat last complete spoken phrase [n] times (default 1)
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'repple'
      name <<-'END'
        Repeats an individual command component. Right after any command say [repple X] to repeat it X times
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'vc-catch-all'
      name <<-'END'
        catches all text - just for creation in Dragon
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'keeper'
      name <<-'END'
        whatever follows this command will be interpreted literally
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'scratchy'
      name <<-'END'
        tries to do a 'smart' undo by deleting previously inserted characters if the previous command only inserted text
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'tragic'
      name <<-'END'
        tries to select the previously inserted text if possible
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'strict on'
      name <<-'END'
        puts VoiceCode into one of the predefined 'strict' modes, where only a subset of commands can be executed
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'strict off'
      name <<-'END'
        puts VoiceCode into one of the predefined 'strict' modes, where only a subset of commands can be executed
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'swick'
      name <<-'END'
        Switch to most recent application
      END
      notes  <<-'END'
          ⌘⇥
      END
    end
     entry do
      command 'foxwitch'
      name <<-'END'
        open application switcher
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'webseek'
      name <<-'END'
        open a new browser tab (from anywhere)
      END
      notes  <<-'END'
          openBrowser ⌘t
      END
    end
     entry do
      command 'fox'
      name <<-'END'
        open application
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'spark'
      name <<-'END'
        paste the clipboard (or named item from {stoosh} command)
      END
      notes  <<-'END'
          ⌘v
      END
    end
     entry do
      command 'allspark'
      name <<-'END'
        select all then paste the clipboard
      END
      notes  <<-'END'
          ⌘a  ⌘v
      END
    end
     entry do
      command 'skoopark'
      name <<-'END'
        insert space then paste the clipboard (or named item from {stoosh} command)
      END
      notes  <<-'END'
          &nbsp; do(spark)
      END
    end
     entry do
      command 'stooshwick'
      name <<-'END'
        copy whatever is selected then switch applications
      END
      notes  <<-'END'
          ⌘c  ⌘⇥
      END
    end
     entry do
      command 'stoosh'
      name <<-'END'
        copy whatever is selected (if an argument is given whatever is copied is stored with that name and can be pasted via {spark [name]})
      END
      notes  <<-'END'
          ⌘c
      END
    end
     entry do
      command 'allstoosh'
      name <<-'END'
        select all then copy whatever is selected
      END
      notes  <<-'END'
          ⌘a  ⌘c
      END
    end
     entry do
      command 'snatch'
      name <<-'END'
        cut whatever is selected
      END
      notes  <<-'END'
          ⌘x
      END
    end
     entry do
      command 'shock'
      name <<-'END'
        press the return key
      END
      notes  <<-'END'
          ↩
      END
    end
     entry do
      command 'junk'
      name <<-'END'
        press the delete key
      END
      notes  <<-'END'
          ⌫
      END
    end
     entry do
      command 'spunk'
      name <<-'END'
        pressed the forward delete key
      END
      notes  <<-'END'
          ⌦
      END
    end
     entry do
      command 'dizzle'
      name <<-'END'
        undo
      END
      notes  <<-'END'
          ⌘z
      END
    end
     entry do
      command 'rizzle'
      name <<-'END'
        redo
      END
      notes  <<-'END'
          ⌘⇧z
      END
    end
     entry do
      command 'tarp'
      name <<-'END'
        inserts a tab
      END
      notes  <<-'END'
          ⇥
      END
    end
     entry do
      command 'tarsh'
      name <<-'END'
        inserts a shift + tab
      END
      notes  <<-'END'
          ⇧⇥
      END
    end
     entry do
      command 'gibby'
      name <<-'END'
        Switch to next window in same application
      END
      notes  <<-'END'
          ⌘`
      END
    end
     entry do
      command 'shibby'
      name <<-'END'
        Switch to previous window in same application
      END
      notes  <<-'END'
          ⌘⇧`
      END
    end
     entry do
      command 'shompla'
      name <<-'END'
        zoom in
      END
      notes  <<-'END'
          ⌘=
      END
    end
     entry do
      command 'shaman'
      name <<-'END'
        zoom out
      END
      notes  <<-'END'
          ⌘-
      END
    end
     entry do
      command 'shabble'
      name <<-'END'
        indent to the left
      END
      notes  <<-'END'
          ⌘[
      END
    end
     entry do
      command 'shabber'
      name <<-'END'
        indent to the right
      END
      notes  <<-'END'
          ⌘]
      END
    end
     entry do
      command 'marneck'
      name <<-'END'
        find the next occurrence of a search term
      END
      notes  <<-'END'
          ⌘g
      END
    end
     entry do
      command 'marpreev'
      name <<-'END'
        find the previous occurrence of a search term
      END
      notes  <<-'END'
          ⌘⇧g
      END
    end
     entry do
      command 'olly'
      name <<-'END'
        select all
      END
      notes  <<-'END'
          ⌘a
      END
    end
     entry do
      command 'sage'
      name <<-'END'
        file &gt; save
      END
      notes  <<-'END'
          ⌘s
      END
    end
     entry do
      command 'totch'
      name <<-'END'
        close a window or tab
      END
      notes  <<-'END'
          ⌘w
      END
    end
     entry do
      command 'marco'
      name <<-'END'
        find
      END
      notes  <<-'END'
          ⌘f
      END
    end
     entry do
      command 'talky'
      name <<-'END'
        open a new tab
      END
      notes  <<-'END'
          ⌘t
      END
    end
     entry do
      command 'randall'
      name <<-'END'
        press escape
      END
      notes  <<-'END'
          ⎋
      END
    end
     entry do
      command 'prome'
      name <<-'END'
        press the home key
      END
      notes  <<-'END'
          home
      END
    end
     entry do
      command 'prend'
      name <<-'END'
        press the home key
      END
      notes  <<-'END'
          end
      END
    end
     entry do
      command 'shin'
      name <<-'END'
        does nothing, but enters into voice code
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'skoosh'
      name <<-'END'
        insert a space
      END
      notes  <<-'END'
          &nbsp;
      END
    end
     entry do
      command 'shockoon'
      name <<-'END'
        Inserts a new line below the current line
      END
      notes  <<-'END'
          ⌘→  ↩
      END
    end
     entry do
      command 'shockey'
      name <<-'END'
        Inserts a new line above the current line
      END
      notes  <<-'END'
          ⌘←  ↩  ↑
      END
    end
     entry do
      command 'doomway'
      name <<-'END'
        move the cursor to the bottom of the page
      END
      notes  <<-'END'
          ⌘↓
      END
    end
     entry do
      command 'doom'
      name <<-'END'
        press the down arrow
      END
      notes  <<-'END'
          ↓
      END
    end
     entry do
      command 'jeepway'
      name <<-'END'
        move the cursor to the top of the page
      END
      notes  <<-'END'
          ⌘↑
      END
    end
     entry do
      command 'jeep'
      name <<-'END'
        Press the up arrow
      END
      notes  <<-'END'
          ↑
      END
    end
     entry do
      command 'crimp'
      name <<-'END'
        press the left arrow
      END
      notes  <<-'END'
          ←
      END
    end
     entry do
      command 'chris'
      name <<-'END'
        press the right arrow
      END
      notes  <<-'END'
          →
      END
    end
     entry do
      command 'shunkrim'
      name <<-'END'
        move the cursor by word to the left
      END
      notes  <<-'END'
          ⌥←
      END
    end
     entry do
      command 'shunkrish'
      name <<-'END'
        move the cursor by word to the right
      END
      notes  <<-'END'
          ⌥→
      END
    end
     entry do
      command 'ricky'
      name <<-'END'
        moves the cursor all the way to the right
      END
      notes  <<-'END'
          ⌘→
      END
    end
     entry do
      command 'derek'
      name <<-'END'
        moves the cursor on the way to the right than inserts a space
      END
      notes  <<-'END'
          ⌘→  &nbsp;
      END
    end
     entry do
      command 'nudgle'
      name <<-'END'
        remove a space before the adjacent word on the left
      END
      notes  <<-'END'
          ⌥←  ⌫
      END
    end
     entry do
      command 'ricksy'
      name <<-'END'
        selects all text to the right
      END
      notes  <<-'END'
          ⌘⇧→
      END
    end
     entry do
      command 'lefty'
      name <<-'END'
        move the cursor all the way to the left
      END
      notes  <<-'END'
          ⌘←
      END
    end
     entry do
      command 'lecksy'
      name <<-'END'
        selects all text to the left
      END
      notes  <<-'END'
          ⌘⇧←
      END
    end
     entry do
      command 'shackle'
      name <<-'END'
        selects the entire line
      END
      notes  <<-'END'
          ⌘←  ⌘⇧→
      END
    end
     entry do
      command 'snipline'
      name <<-'END'
        with no arguments will delete the entire line(s). With a single argument will move to that line and delete it. With a number range will delete the range of lines
      END
      notes  <<-'END'
          ⌫  ⌘→  ⌘⌫
      END
    end
     entry do
      command 'snipper'
      name <<-'END'
        will delete everything to the right
      END
      notes  <<-'END'
          ⌘⇧→  ⌫
      END
    end
     entry do
      command 'snipple'
      name <<-'END'
        will delete everything to the left
      END
      notes  <<-'END'
          ⌘⌫
      END
    end
     entry do
      command 'jolt'
      name <<-'END'
        will duplicate the current line
      END
      notes  <<-'END'
          do(shackle) ⌘c  →  ↩  ⌘v
      END
    end
     entry do
      command 'trough'
      name <<-'END'
        delete a word at a time (press option-delete)
      END
      notes  <<-'END'
          ⌥⌫
      END
    end
     entry do
      command 'kite'
      name <<-'END'
        forward delete a word at a time
      END
      notes  <<-'END'
          ⌥⌦
      END
    end
     entry do
      command 'goneck'
      name <<-'END'
        go to next thing (application-specific), tab, message, etc.
      END
      notes  <<-'END'
          ⌘⇧]
      END
    end
     entry do
      command 'gopreev'
      name <<-'END'
        go to previous thing (application-specific), tab, message, etc.
      END
      notes  <<-'END'
          ⌘⇧[
      END
    end
     entry do
      command 'baxley'
      name <<-'END'
        go “back“ - whatever that might mean in context
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'fourthly'
      name <<-'END'
        go “forward“ - whatever that might mean in context
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'freshly'
      name <<-'END'
        reload or refresh depending on context
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'duke'
      name <<-'END'
        double click
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'chipper'
      name <<-'END'
        right click
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'chiff'
      name <<-'END'
        left click
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'triplick'
      name <<-'END'
        left click
      END
      notes  <<-'END'
          triple-click
      END
    end
     entry do
      command 'shicks'
      name <<-'END'
        shift+click
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'chibble'
      name <<-'END'
        selects the entire line of text cursor hovers over
      END
      notes  <<-'END'
          do(chiff) ⌘Left  ⌘⇧Right
      END
    end
     entry do
      command 'dookoosh'
      name <<-'END'
        mouse double click, then copy
      END
      notes  <<-'END'
          do(duke)do(stoosh)
      END
    end
     entry do
      command 'chiffpark'
      name <<-'END'
        mouse single click, then paste
      END
      notes  <<-'END'
          do(chiff)do(spark)
      END
    end
     entry do
      command 'page up'
      name <<-'END'
        press PageUp key [N] times
      END
      notes  <<-'END'
          pageup
      END
    end
     entry do
      command 'page down'
      name <<-'END'
        press PageDown key [N] times
      END
      notes  <<-'END'
          pagedown
      END
    end
     entry do
      command 'scrodge'
      name <<-'END'
        scroll down
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'scroop'
      name <<-'END'
        scroll up
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'scrodgeway'
      name <<-'END'
        scroll way down
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'scroopway'
      name <<-'END'
        scroll way up
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'shroomway'
      name <<-'END'
        select all text downward
      END
      notes  <<-'END'
          ⇧⌘↓
      END
    end
     entry do
      command 'shroom'
      name <<-'END'
        shift down, select text by line downward
      END
      notes  <<-'END'
          ⇧↓
      END
    end
     entry do
      command 'shreepway'
      name <<-'END'
        select all text upward
      END
      notes  <<-'END'
          ⇧⌘↑
      END
    end
     entry do
      command 'shreep'
      name <<-'END'
        shift up, select text by line upward
      END
      notes  <<-'END'
          ⇧↑
      END
    end
     entry do
      command 'shrim'
      name <<-'END'
        extend selection by character to the left
      END
      notes  <<-'END'
          ⇧←
      END
    end
     entry do
      command 'shrish'
      name <<-'END'
        extend selection by character to the right
      END
      notes  <<-'END'
          ⇧→
      END
    end
     entry do
      command 'scram'
      name <<-'END'
        extend selection by word to the left
      END
      notes  <<-'END'
          ⌥⇧←
      END
    end
     entry do
      command 'scrish'
      name <<-'END'
        extend selection by word to the right
      END
      notes  <<-'END'
          ⌥⇧→
      END
    end
     entry do
      command 'dot'
      name <<-'END'
        
      END
      notes  <<-'END'
          .
      END
    end
     entry do
      command 'star'
      name <<-'END'
        
      END
      notes  <<-'END'
          *
      END
    end
     entry do
      command 'slash'
      name <<-'END'
        
      END
      notes  <<-'END'
          /
      END
    end
     entry do
      command 'shalls'
      name <<-'END'
        backslash. hint: 'shalls' is 'slash' backward.
      END
      notes  <<-'END'
          \
      END
    end
     entry do
      command 'comma'
      name <<-'END'
        
      END
      notes  <<-'END'
          ,
      END
    end
     entry do
      command 'tilde'
      name <<-'END'
        
      END
      notes  <<-'END'
          ~
      END
    end
     entry do
      command 'colon'
      name <<-'END'
        
      END
      notes  <<-'END'
          :
      END
    end
     entry do
      command 'equeft'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;=&nbsp;
      END
    end
     entry do
      command 'smaqual'
      name <<-'END'
        
      END
      notes  <<-'END'
          =
      END
    end
     entry do
      command 'qualcoif'
      name <<-'END'
        
      END
      notes  <<-'END'
          =““  ←
      END
    end
     entry do
      command 'qualposh'
      name <<-'END'
        
      END
      notes  <<-'END'
          =''  ←
      END
    end
     entry do
      command 'prexcoif'
      name <<-'END'
        inserts parentheses then double quotes leaving cursor inside them. If text is selected, will wrap the selected text
      END
      notes  <<-'END'
          (““)  ←  ←
      END
    end
     entry do
      command 'prex'
      name <<-'END'
        inserts parentheses leaving cursor inside them. If text is selected, will wrap the selected text
      END
      notes  <<-'END'
          ()  ←
      END
    end
     entry do
      command 'prekris'
      name <<-'END'
        
      END
      notes  <<-'END'
          ()
      END
    end
     entry do
      command 'brax'
      name <<-'END'
        inserts brackets leaving cursor inside them. If text is selected, will wrap the selected text
      END
      notes  <<-'END'
          []  ←
      END
    end
     entry do
      command 'kirksorp'
      name <<-'END'
        
      END
      notes  <<-'END'
          {
      END
    end
     entry do
      command 'kirkos'
      name <<-'END'
        
      END
      notes  <<-'END'
          }
      END
    end
     entry do
      command 'kirk'
      name <<-'END'
        
      END
      notes  <<-'END'
          {}  ←
      END
    end
     entry do
      command 'kirblock'
      name <<-'END'
        
      END
      notes  <<-'END'
          {}  ←  ↩
      END
    end
     entry do
      command 'prank'
      name <<-'END'
        inserts 2 spaces leaving cursor in the middle. If text is selected, will wrap the selected text in spaces
      END
      notes  <<-'END'
          &nbsp;&nbsp;  ←
      END
    end
     entry do
      command 'minquall'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;-=&nbsp;
      END
    end
     entry do
      command 'pluqual'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;+=&nbsp;
      END
    end
     entry do
      command 'banquall'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;!=&nbsp;
      END
    end
     entry do
      command 'longqual'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;==&nbsp;
      END
    end
     entry do
      command 'lessqual'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;&lt;=&nbsp;
      END
    end
     entry do
      command 'grayqual'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;&gt;=&nbsp;
      END
    end
     entry do
      command 'posh'
      name <<-'END'
        
      END
      notes  <<-'END'
          ''  ←
      END
    end
     entry do
      command 'coif'
      name <<-'END'
        inserts quotes leaving cursor inside them. If text is selected, will wrap the selected text
      END
      notes  <<-'END'
          ““  ←
      END
    end
     entry do
      command 'shrocket'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;=&gt;&nbsp;
      END
    end
     entry do
      command 'swipe'
      name <<-'END'
        
      END
      notes  <<-'END'
          ,&nbsp;
      END
    end
     entry do
      command 'coalgap'
      name <<-'END'
        
      END
      notes  <<-'END'
          :&nbsp;
      END
    end
     entry do
      command 'coalshock'
      name <<-'END'
        
      END
      notes  <<-'END'
          :  ↩
      END
    end
     entry do
      command 'divy'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;/&nbsp;
      END
    end
     entry do
      command 'sinker'
      name <<-'END'
        
      END
      notes  <<-'END'
          ⌘→  ;
      END
    end
     entry do
      command 'sunkshock'
      name <<-'END'
        
      END
      notes  <<-'END'
          ;  ↩
      END
    end
     entry do
      command 'sunk'
      name <<-'END'
        
      END
      notes  <<-'END'
          ;
      END
    end
     entry do
      command 'clamor'
      name <<-'END'
        
      END
      notes  <<-'END'
          !
      END
    end
     entry do
      command 'loco'
      name <<-'END'
        
      END
      notes  <<-'END'
          @
      END
    end
     entry do
      command 'amper'
      name <<-'END'
        
      END
      notes  <<-'END'
          &amp;
      END
    end
     entry do
      command 'damper'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;&amp;&nbsp;
      END
    end
     entry do
      command 'pounder'
      name <<-'END'
        
      END
      notes  <<-'END'
          #
      END
    end
     entry do
      command 'questo'
      name <<-'END'
        
      END
      notes  <<-'END'
          ?
      END
    end
     entry do
      command 'bartrap'
      name <<-'END'
        
      END
      notes  <<-'END'
          ||  ←
      END
    end
     entry do
      command 'goalpost'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;||&nbsp;
      END
    end
     entry do
      command 'orquals'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;||=&nbsp;
      END
    end
     entry do
      command 'spike'
      name <<-'END'
        
      END
      notes  <<-'END'
          |
      END
    end
     entry do
      command 'angler'
      name <<-'END'
        inserts angle brackets leaving cursor inside them. If text is selected, will wrap the selected text
      END
      notes  <<-'END'
          &lt;&gt;  ←
      END
    end
     entry do
      command 'plus'
      name <<-'END'
        
      END
      notes  <<-'END'
          +
      END
    end
     entry do
      command 'deplush'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;+&nbsp;
      END
    end
     entry do
      command 'minus'
      name <<-'END'
        
      END
      notes  <<-'END'
          -
      END
    end
     entry do
      command 'deminus'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;-&nbsp;
      END
    end
     entry do
      command 'lambo'
      name <<-'END'
        
      END
      notes  <<-'END'
          -&gt;
      END
    end
     entry do
      command 'quatches'
      name <<-'END'
        
      END
      notes  <<-'END'
          “
      END
    end
     entry do
      command 'quatchet'
      name <<-'END'
        
      END
      notes  <<-'END'
          '
      END
    end
     entry do
      command 'percy'
      name <<-'END'
        
      END
      notes  <<-'END'
          %
      END
    end
     entry do
      command 'depercy'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;%&nbsp;
      END
    end
     entry do
      command 'dolly'
      name <<-'END'
        
      END
      notes  <<-'END'
          $
      END
    end
     entry do
      command 'clangle'
      name <<-'END'
        
      END
      notes  <<-'END'
          &lt;
      END
    end
     entry do
      command 'declangle'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;&lt;&nbsp;
      END
    end
     entry do
      command 'langlang'
      name <<-'END'
        
      END
      notes  <<-'END'
          &lt;&lt;
      END
    end
     entry do
      command 'wrangle'
      name <<-'END'
        
      END
      notes  <<-'END'
          &gt;
      END
    end
     entry do
      command 'derangle'
      name <<-'END'
        
      END
      notes  <<-'END'
          &nbsp;&gt;&nbsp;
      END
    end
     entry do
      command 'rangrang'
      name <<-'END'
        
      END
      notes  <<-'END'
          &gt;&gt;
      END
    end
     entry do
      command 'precorp'
      name <<-'END'
        
      END
      notes  <<-'END'
          (
      END
    end
     entry do
      command 'prekose'
      name <<-'END'
        
      END
      notes  <<-'END'
          )
      END
    end
     entry do
      command 'brackorp'
      name <<-'END'
        
      END
      notes  <<-'END'
          [
      END
    end
     entry do
      command 'brackose'
      name <<-'END'
        
      END
      notes  <<-'END'
          ]
      END
    end
     entry do
      command 'crunder'
      name <<-'END'
        
      END
      notes  <<-'END'
          _
      END
    end
     entry do
      command 'coaltwice'
      name <<-'END'
        
      END
      notes  <<-'END'
          ::
      END
    end
     entry do
      command 'mintwice'
      name <<-'END'
        
      END
      notes  <<-'END'
          --
      END
    end
     entry do
      command 'tinker'
      name <<-'END'
        
      END
      notes  <<-'END'
          `
      END
    end
     entry do
      command 'caret'
      name <<-'END'
        
      END
      notes  <<-'END'
          ^
      END
    end
     entry do
      command 'ellipsis'
      name <<-'END'
        
      END
      notes  <<-'END'
          ...
      END
    end
     entry do
      command 'swash'
      name <<-'END'
        opens drop-down menu by name. A few special arguments are also allowed: [bluetooth, wi-fi, clock, battery]
      END
      notes  <<-'END'
          openMenuBarItem()
      END
    end
     entry do
      command 'blerch'
      name <<-'END'
        search the menubar items (opens help menu)
      END
      notes  <<-'END'
          openMenuBarItem(help)
      END
    end
     entry do
      command 'volume'
      name <<-'END'
        adjust the system volume [0-100]
      END
      notes  <<-'END'
          setVolume()
      END
    end
     entry do
      command 'volume plus'
      name <<-'END'
        increase the system volume by [0-100] (default 10)
      END
      notes  <<-'END'
          setVolume(60)
      END
    end
     entry do
      command 'volume minus'
      name <<-'END'
        decrease the system volume by [0-100] (default 10)
      END
      notes  <<-'END'
          setVolume(40)
      END
    end
     entry do
      command 'windy'
      name <<-'END'
        set the size/position of the frontmost window to one of the preset sizes/positions
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'one'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'two'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'twah'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'three'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'four'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'quads'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'five'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'six'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'seven'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'eight'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'nine'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'zero'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'oh'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'eleven'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'twelve'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'thirteen'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'fourteen'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'fifteen'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'sixteen'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'seventeen'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'eighteen'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'nineteen'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'ten'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'twenty'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'thirty'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'forty'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'fifty'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'sixty'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'seventy'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'eighty'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'ninety'
      name <<-'END'
        Enters the number: #{value}
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'vc-literal'
      name <<-'END'
        words with spaces between. This command is for internal grammar use (not spoken)
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'champ'
      name <<-'END'
        capitalize next individual word
      END
      notes  <<-'END'
          transformSelectedText(titleFirstSentance)
      END
    end
     entry do
      command 'cram'
      name <<-'END'
        camelCaseText
      END
      notes  <<-'END'
          transformSelectedText(camel)
      END
    end
     entry do
      command 'snake'
      name <<-'END'
        snake_case_text
      END
      notes  <<-'END'
          transformSelectedText(snake)
      END
    end
     entry do
      command 'spine'
      name <<-'END'
        spinal-case-text
      END
      notes  <<-'END'
          transformSelectedText(spine)
      END
    end
     entry do
      command 'criffed'
      name <<-'END'
        StudCaseText
      END
      notes  <<-'END'
          transformSelectedText(stud)
      END
    end
     entry do
      command 'smash'
      name <<-'END'
        lowercasewithnospaces
      END
      notes  <<-'END'
          transformSelectedText(lowerSlam)
      END
    end
     entry do
      command 'yeller'
      name <<-'END'
        UPPER CASE WITH SPACES
      END
      notes  <<-'END'
          transformSelectedText(upperCase)
      END
    end
     entry do
      command 'tridal'
      name <<-'END'
        Title Words With Spaces
      END
      notes  <<-'END'
          transformSelectedText(titleSentance)
      END
    end
     entry do
      command 'senchen'
      name <<-'END'
        Sentence case with spaces
      END
      notes  <<-'END'
          transformSelectedText(titleFirstSentance)
      END
    end
     entry do
      command 'trench'
      name <<-'END'
        space then Sentence case with spaces
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'datsun'
      name <<-'END'
        Sentence case with spaces
      END
      notes  <<-'END'
          .&nbsp;
      END
    end
     entry do
      command 'wink'
      name <<-'END'
        repeat last individual command times [1]
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'soup'
      name <<-'END'
        repeat last individual command times [2]
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'trace'
      name <<-'END'
        repeat last individual command times [3]
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'quarr'
      name <<-'END'
        repeat last individual command times [4]
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'fypes'
      name <<-'END'
        repeat last individual command times [5]
      END
      notes  <<-'END'
          
      END
    end


  end

  category do
    id 'alphabet'

        entry do
      command 'arch'
      name <<-'END'
        Enters the single letter: a
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'brov'
      name <<-'END'
        Enters the single letter: b
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'char'
      name <<-'END'
        Enters the single letter: c
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'dell'
      name <<-'END'
        Enters the single letter: d
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'etch'
      name <<-'END'
        Enters the single letter: e
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'fomp'
      name <<-'END'
        Enters the single letter: f
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'goof'
      name <<-'END'
        Enters the single letter: g
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'hark'
      name <<-'END'
        Enters the single letter: h
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'ice'
      name <<-'END'
        Enters the single letter: i
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'jinks'
      name <<-'END'
        Enters the single letter: j
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'koop'
      name <<-'END'
        Enters the single letter: k
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'lug'
      name <<-'END'
        Enters the single letter: l
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'mowsh'
      name <<-'END'
        Enters the single letter: m
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'nerb'
      name <<-'END'
        Enters the single letter: n
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'ork'
      name <<-'END'
        Enters the single letter: o
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'pooch'
      name <<-'END'
        Enters the single letter: p
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'quash'
      name <<-'END'
        Enters the single letter: q
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'rosh'
      name <<-'END'
        Enters the single letter: r
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'souk'
      name <<-'END'
        Enters the single letter: s
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'teek'
      name <<-'END'
        Enters the single letter: t
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'unks'
      name <<-'END'
        Enters the single letter: u
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'verge'
      name <<-'END'
        Enters the single letter: v
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'womp'
      name <<-'END'
        Enters the single letter: w
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'trex'
      name <<-'END'
        Enters the single letter: x
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'yang'
      name <<-'END'
        Enters the single letter: y
      END
      notes  <<-'END'
          
      END
    end
     entry do
      command 'zooch'
      name <<-'END'
        Enters the single letter: z
      END
      notes  <<-'END'
          
      END
    end


  end
notes 'VoiceCode docset by Casey Link @Ramblurr'
end
