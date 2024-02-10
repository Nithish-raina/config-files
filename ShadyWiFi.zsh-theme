#Author : Nithish Raina <Nithish> 

PROMPT='
┌─[%F{blue} %~%f] [%F{blue}😎 Nithish Raina %f] [%F{green} $(get_ip_address)%f] $(git_prompt_info)
└─➜ '

RPROMPT='[%F{green} Code ⚡️ Sleep ⚡️ Repeat ⚡️%f]'



get_ip_address() {
  if [[ -n "$(ifconfig tun0 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(ifconfig tun0 | awk '/inet / {print $2}')%{$reset_color%}"
  elif [[ -n "$(ifconfig wlp0s20f3 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(ifconfig wlp0s20f3 | awk '/inet / {print $2}')%{$reset_color%}"
  else
    echo "%{$fg[red]%}No IP%{$reset_color%}"
  fi
}

