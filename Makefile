MY_EMAIL=bgallmeister@yahoo.com
MY_NAME='Bill Gallmeister'

ENVIRONMENT_FILES= .bash_aliases .vimrc .quiltrc-dpkg .Xdefaults

# Debian list.
USEFUL_PACKAGES= python3 python3-pip r-base-core default-jre default-jdk
HACKED_PACKAGES= vim-pathogen vim-go

DISTRO=`uname -a | awk '{print $4}' | awk -F- '{print $NF}'`
WHATAMI=`uname`_`arch`

# Might be nicer to check for existence...later.
install: FORCE
	cp $(ENVIRONMENT_FILES) $(HOME)
	mkdir -p $(HOME)/tools/platform-independent/bin
	mkdir -p $(HOME)/tools/platform-independent/lib
	mkdir -p $(HOME)/tools/$(WHATAMI)/bin
	mkdir -p $(HOME)/tools/$(WHATAMI)/lib
	mkdir -p $(HOME)/tools/$(WHATAMI)/go
	cp -r .vim $(HOME)/.vim

gitsetup: FORCE
	git config --global user.email $(MY_EMAIL)
	git config --global user.name $(MY_NAME)
	@echo Git context set to $(MY_NAME) \( $(MY_EMAIL) \)

reminders: FORCE
	@echo Don\'t forget to install $(USEFUL_PACKAGES)
	@echo Installed cached versions of $(HACKED_PACKAGES)\; updates possibly necessary\?
	@echo Set GOPATH to $(HOME)/tools/$(WHATAMI)/go and run :GoInstallBinaries.

itall: install gitsetup reminders

test: FORCE
	echo $(WHATAMI)

FORCE:

