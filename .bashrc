export PS1='\u@\h \w: '

alias ls="ls -CFa"
alias ll="ls -lrt"
alias hi="history"
alias po="popd"
alias pu="pushd"
alias d="dirs"
alias jo="jobs"

# JAVA_HOME
JAVA_HOME=$(/usr/libexec/java_home)
export JAVA_HOME

# Setting PATH for bog's stuff.
PATH="$HOME/tools/script:${PATH}"
export PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
#PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
#export PATH

# Setting PATH for hadoop 2.6.4
# The orginal version is saved in .bash_profile.pysave
PATH="$HOME/tools/hadoop-2.6.4/bin:${PATH}"
export PATH

# Setting PATH for Maven
# The orginal version is saved in .bash_profile.pysave
PATH="${PATH}:$HOME/tools/apache-maven-3.3.9/bin"
export PATH

# Setting PATH for Go
PATH=${PATH}:/usr/local/go/bin
export PATH
# Might need to change.
export GOPATH=$HOME/go

# H2o "Steam" project-specific:  set GOPATH
export GOPATH=$HOME/work/src/go-land

# added by Anaconda2 4.2.0 installer
###export PATH="/Users/bill/anaconda2/bin:$PATH"

# Quilting.
alias dquilt="quilt --quiltrc=$(HOME}/.quiltrc-dpkg"
complete -F _quilt_completion $_quilt_complete_opt dquilt

