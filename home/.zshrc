## Antigen

ZSHA_BASE=$HOME/.etc/antigen
source $ZSHA_BASE/antigen.zsh

antigen use oh-my-zsh

antigen bundles <<-BUNDLES
  bundler
  git
  heroku
  npm
  rails
  ruby
  ssh-agent
  tmux
  mafredri/zsh-async
  sindresorhus/pure
  zsh-users/zsh-completions
  zsh-users/zsh-history-substring-search
  zsh-users/zsh-syntax-highlighting
BUNDLES

if [ "$OSTYPE"="darwin11.0" ]; then
  antigen-bundle osx
fi

antigen apply

## Editor

export EDITOR='atom -w'
export VISUAL='atom -w'
export BUNDLER_EDITOR='atom'

## Path

PATH=/usr/local/bin:/usr/X11/bin:/usr/bin:/bin:/usr/sbin:/sbin

export PATH="$PATH:./node_modules/.bin"
export PATH="$PATH:`yarn global bin`"
export PATH="$HOME/.node/bin:$PATH"

export PATH="$HOME/bin:$PATH"

export MANPATH=$MANPATH:/opt/local/share/man
export INFOPATH=$INFOPATH:/opt/local/share/info

## Ext

if [ -f ~/.aliases.zsh ]; then
  . ~/.aliases.zsh
fi

if [ -f ~/.private ]; then
  . ~/.private
fi

# brew install zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

## Lang

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export ARCHFLAGS="-arch x86_64"

## Ruby

export RBENV_ROOT=/usr/local/var/rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

## Rust

export CARGO_HOME=$HOME/.cargo
export RUST_SRC_PATH=/usr/local/src/rust/src


eval "$(direnv hook zsh)"
eval "$(thefuck --alias)"