# Catppuccin Mocha
local blue='#89B4FA'
local green='#A6E3A1'
local lavender='#B4BEFE'
local overlay0='#6C7086'
local overlay2='#ACB0BE'
local pink='#F5C2E7'
local red='#F38BA8'

# OS icon
local os_icon='󰌽'
case "$OSTYPE" in
  darwin*)  
    os_icon='󰀵' 
    ;;
  linux*)   
    if [[ -f /etc/os-release ]]; then
      source /etc/os-release
      case "$ID" in
        ubuntu)           os_icon='󰕈' ;;
        arch)             os_icon='󰣇' ;;
        artix)            os_icon='󰣇' ;;
        fedora)           os_icon='󰣛' ;;
        debian)           os_icon='󰣚' ;;
        raspbian)         os_icon='󰐿' ;;
        mint)             os_icon='󰣭' ;;
        manjaro)          os_icon='' ;;
        gentoo)           os_icon='󰣨' ;;
        alpine)           os_icon='' ;;
        centos)           os_icon='' ;;
        rhel)             os_icon='󱄛' ;;
        suse|opensuse*)   os_icon='' ;;
        *)                os_icon='󰌽' ;;
      esac
    else
      os_icon='󰌽'
    fi
    ;;
esac

# Custom path
custom_path() {
  local path_display="${PWD/#$HOME/~}"
  
  path_display="${path_display//Downloads/ Downloads}"
  path_display="${path_display//Documents/󰈙 Documents}"
  path_display="${path_display//Music/󰝚 Music}"
  path_display="${path_display//Pictures/ Pictures}"
  path_display="${path_display//Developer/󰲋 Developer}"
  
  echo -n "${path_display}"
}

git_info() {
  git rev-parse --git-dir &>/dev/null || return
  
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null || git rev-parse --short HEAD 2>/dev/null)
  
  echo -n "%F{$lavender} ${branch}%f"
}

# Build prompt
PROMPT='%F{$overlay2}${os_icon} %f'
PROMPT+='%F{$blue}%n@%m%f '
PROMPT+='%F{$pink}$(custom_path)%f '
PROMPT+='$(git_info)'
PROMPT+=$'\n'
PROMPT+='%(?.%F{$green}.%F{$red})❯%f '

# Right prompt with time
RPROMPT='%F{$overlay0}%*%f'