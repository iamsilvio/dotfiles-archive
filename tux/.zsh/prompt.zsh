#!/bin/zsh


# autoload -U add-zsh-hook
# autoload -Uz vcs_info

setopt prompt_subst
autoload -U promptinit
promptinit

function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

# function prompt_char {
#     git branch >/dev/null 2>/dev/null && echo '±' && return
#     hg root >/dev/null 2>/dev/null && echo '☿' && return
#     echo '○'
# }

function check_timer {
  if [[ $AWESOME_COUNTDOWN ]] && [ $AWESOME_COUNTDOWN -eq $AWESOME_COUNTDOWN ] 2>/dev/null
    then
      tnow=$(date +%s)
      if [ $AWESOME_COUNTDOWN -gt $tnow ]
        then
          tleft=$(( $AWESOME_COUNTDOWN - $tnow))
          eval "echo $(date -ud "@$tleft" +'%H:%M:%S')"
        else
          unset $AWESOME_COUNTDOWN
	fi
    fi
}


# RPROMPT='$(check_timer)'
# TMOUT=1

TRAPALRM() {
  zle reset-prompt
}

PROMPT='
%{$fg[magenta]%}%B%n%b%{$reset_color%} @%{$fg[yellow]%}%m%{$reset_color%} | %{$fg_bold[green]%}$(collapse_pwd)%{$reset_color%}
%# '
