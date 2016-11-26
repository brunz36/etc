#!/usr/bin/env zsh

alias pgs="pg_ctl -D /usr/local/var/postgres start"
alias pgx="pg_ctl -D /usr/local/var/postgres stop"

alias rs="redis-server /usr/local/etc/redis.conf"
alias rx="killall -SIGTERM redis-server"
alias rdu="launchctl load /usr/local/opt/redis/homebrew.mxcl.redis.plist"
alias rdd="launchctl unload /usr/local/opt/redis/homebrew.mxcl.redis.plist"

alias etc="atom ~/.etc"
alias etc-run="cd ~/.etc && rake"
alias etc-up="cd ~/.etc && rake update"

alias cask="brew cask"

alias git=hub

alias rm="if [ -x /usr/local/bin/figlet ]; then figlet 'use trash'; else; echo 'use trash'; fi #"