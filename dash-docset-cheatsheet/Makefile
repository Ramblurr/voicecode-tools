DOCSET := voicecode
CHEATSET := $(shell command -v cheatset 2> /dev/null)

.cheatset:
ifndef CHEATSET
	$(error "You must install Cheatset: https://github.com/Kapeli/cheatset")
endif

default: .cheatset
	@echo "Generating ${DOCSET}.docset"
	@${CHEATSET} generate ${DOCSET}.rb
	@cp icon.png icon@2x.png ${DOCSET}.docset/
	@echo "Done. Import $(shell pwd)/${DOCSET}.docset into dash."
