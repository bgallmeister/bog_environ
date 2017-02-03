ENVIRONMENT_FILES= .bash_aliases .vimrc .quiltrc-dpkg

WHATAMI=`uname`_`arch`

# Might be nicer to check for existence...later.
install: FORCE
	cp $(ENVIRONMENT_FILES) $(HOME)
	mkdir -p $(HOME)/tools/platform-independent/bin
	mkdir -p $(HOME)/tools/platform-independent/lib
	mkdir -p $(HOME)/tools/$(WHATAMI)/bin
	mkdir -p $(HOME)/tools/$(WHATAMI)/lib

test: FORCE
	echo $(WHATAMI)

FORCE:

