# history
HISTFILE=$ZDOTDIR/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt extended_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
setopt share_history

function zshaddhistory()
{
    if ((${#1} < 4)); then
        return 1
    fi
}

# powerline
if [ ! -z "${POWERLINE_HOME:-}" ] && [ -d "$POWERLINE_HOME" ]; then
    powerline-daemon --quiet
    . "$POWERLINE_HOME/bindings/zsh/powerline.zsh"
fi

# zplug
. "$ZPLUG_HOME/init.zsh"

zplug junegunn/fzf-bin, as:command, from:gh-r, rename-to:fzf
zplug junegunn/fzf, as:command, use:bin/fzf-tmux
zplug zsh-users/zsh-autosuggestions
zplug zsh-users/zsh-syntax-highlighting

zplug check --verbose || zplug install
zplug load

. ~/.aliases

# key binding
zle -N git-history
zle -N git-working-tree
zle -N explore
zle -N explore-github
zle -N search-history
bindkey '^g^g' git-history
bindkey '^g^w' git-working-tree
bindkey '^e^e' explore
bindkey '^e^g' explore-github
bindkey '^r' search-history

# load user configuration
if [ -f ~/.local/.usershell ]; then
    . ~/.local/.usershell
fi
