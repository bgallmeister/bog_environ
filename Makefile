MY_EMAIL=bgallmeister@yahoo.com
MY_NAME='Bill Gallmeister'

ENVIRONMENT_FILES= .bash_aliases .vimrc .quiltrc-dpkg .Xdefaults
# Debian list.
USEFUL_PACKAGES= python3 python3-pip r-base-core default-jre default-jdk

DISTRO=`uname -a | awk '{print $4}' | awk -F- '{print $NF}'`
WHATAMI=`uname`_`arch`

# Might be nicer to check for existence...later.
install: gitsetup FORCE
	cp $(ENVIRONMENT_FILES) $(HOME)
	mkdir -p $(HOME)/tools/platform-independent/bin
	mkdir -p $(HOME)/tools/platform-independent/lib
	mkdir -p $(HOME)/tools/$(WHATAMI)/bin
	mkdir -p $(HOME)/tools/$(WHATAMI)/lib

gitsetup: FORCE
	git config --global user.email $(MY_EMAIL)
	git config --global user.name $(MY_NAME)

test: FORCE
	echo $(WHATAMI)

FORCE:

