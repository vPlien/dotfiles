# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{[:lower:]}={[:upper:]}'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' original true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/home/plien/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
bindkey -v
# End of lines configured by zsh-newuser-install

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#################################################################################

## Alias ##

# NixOS
alias nixconf='vim ~/nixfiles/configuration.nix'
alias nixconf-build='sudo -i nixos-rebuild build'
alias nixconf-switch='sudo -i nixos-rebuild switch'
alias nixconf-test='sudo -i nixos-rebuild test'
alias nixgarbage-week='nix-collect-garbage --delete-older-than 7d'
alias nixgarbage-month='nix-collect-garbage --delete-older-than 30d'

# Configurations
alias config-i3='vim ~/.config/i3/config'
alias config-alacritty='vim ~/.config/alacritty/alacritty.yml'
alias config-polybar='vim ~/.config/polybar/config'
alias config-picom='vim ~/.config/picom/picom.conf'
alias config-lf='vim ~/.config/lf/lfrc'
alias config-ranger='vim ~/.config/ranger/rc.conf'
alias config-vim='vim .vimrc'
alias config-zsh='vim .zshrc'
