# Locale settings
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

# Don't run magic when pasting text in the terminal
DISABLE_MAGIC_FUNCTIONS=true

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Disable built-in zsh time function
disable -r time

export ZSH=$HOME/.oh-my-zsh
plugins=(git)
source $ZSH/oh-my-zsh.sh

ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets root cursor)


# Do not trust the cache when searching execs in $PATH
# zstyle ":completion:*:commands" rehash 1

export HOMEBREW_EDITOR=code
HOMEBREW_GITHUB_API_TOKEN="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"

# pyenv init
export WORKON_HOME="$HOME/.virtualenvs"
export PROJECT_HOME="$HOME/Developer"
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# pythonrc
export PYTHONSTARTUP="$HOME/.pythonrc.py"

# nvm
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


export PATH="$HOME/.poetry/bin:$PATH"

eval "$(starship init zsh)"
eval "$(direnv hook zsh)"

export EDITOR="code"

export PIPX_DEFAULT_PYTHON=python3.10

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export GPG_TTY=$(tty)

# Automatic rehash
zstyle ':completion:*' rehash true
