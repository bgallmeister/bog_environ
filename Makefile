FILES= .bash-aliases .vimrc .quiltrc-dpkg .Xdefaults

# Might be nicer to check for existence...later.
install: FORCE
	cp $(FILES) $(HOME)

FORCE:

