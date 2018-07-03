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
    (( $#1 > 3 ))
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
autoload -Uz cd-up
autoload -Uz docker-fuzzy-container
autoload -Uz docker-fuzzy-image
autoload -Uz explore
autoload -Uz git-fuzzy-branch
autoload -Uz git-fuzzy-log
autoload -Uz git-fuzzy-work-tree
autoload -Uz fuzzy-history
zle -N cd-up
zle -N docker-fuzzy-container
zle -N docker-fuzzy-image
zle -N explore
zle -N explore-source
zle -N git-fuzzy-branch
zle -N git-fuzzy-log
zle -N git-fuzzy-work-tree
zle -N fuzzy-history
bindkey '^^' cd-up
bindkey '^e^v' docker-fuzzy-container
bindkey '^e^i' docker-fuzzy-image
bindkey '^e^e' explore
bindkey '^e^g' explore-source
bindkey '^g^r' git-fuzzy-branch
bindkey '^g^g' git-fuzzy-log
bindkey '^g^w' git-fuzzy-work-tree
bindkey '^r' fuzzy-history

# load user configuration
if [ -f ~/.local/.usershell ]; then
    . ~/.local/.usershell
fi
