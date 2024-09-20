#Author : Nithish Raina <Nithish> 

# Left Prompt
PROMPT='
┌─[%F{blue} %~%f] [%F{blue}😎 Nithish Raina %f] [%F{green} $(get_ip_address)%f] $(git_prompt_info)
└─➜ '

# Right Prompt
RPROMPT='[%F{green} Code ⚡️ Sleep ⚡️ Repeat ⚡️%f]'


# Retrieving IP Address for different interfaces such as tun0, wirless interface using awk and piping the output to a null file location
get_ip_address() {
  if [[ -n "$(ifconfig tun0 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(ifconfig tun0 | awk '/inet / {print $2}')%{$reset_color%}"
  elif [[ -n "$(ifconfig wlp0s20f3 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(ifconfig wlp0s20f3 | awk '/inet / {print $2}')%{$reset_color%}"
  else
    echo "%{$fg[red]%}No IP%{$reset_color%}"
  fi
}

