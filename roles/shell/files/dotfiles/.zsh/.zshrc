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

zplug hlissner/zsh-autopair, defer:2
zplug junegunn/fzf-bin, as:command, from:gh-r, rename-to:fzf
zplug junegunn/fzf, as:command, use:bin/fzf-tmux
zplug momo-lab/zsh-abbrev-alias
zplug zsh-users/zsh-autosuggestions
zplug zsh-users/zsh-completions
zplug zsh-users/zsh-syntax-highlighting

zplug check --verbose || zplug install
zplug load

. ~/.aliases

# abbrev-alias
abbrev-alias -g G='| grep --color=yes -n'
abbrev-alias -g L='| less'
abbrev-alias -g X='| xargs'

# key binding
autoload -Uz cd-autodot
autoload -Uz cd-up
autoload -Uz docker-dashboard
autoload -Uz explore
autoload -Uz search-history
autoload -Uz edit-command-line
zle -N git-history
zle -N git-working-tree
zle -N cd-autodot
zle -N cd-up
zle -N docker-dashboard
zle -N explore
zle -N explore-github
zle -N search-history
zle -N edit-command-line
bindkey '^g^g' git-history
bindkey '^g^w' git-working-tree
bindkey '.' cd-autodot
bindkey '^^' cd-up
bindkey '^e^v' docker-dashboard
bindkey '^e^e' explore
bindkey '^e^g' explore-github
bindkey '^r' search-history
bindkey '^xe' edit-command-line
bindkey '^x^e' edit-command-line

# load user configuration
if [ -f ~/.local/.usershell ]; then
    . ~/.local/.usershell
fi
