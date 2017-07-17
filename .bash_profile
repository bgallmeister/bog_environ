echo Home is $HOME
if [ -f $HOME/.bash_aliases ] ; then
	. $HOME/.bash_aliases
fi
