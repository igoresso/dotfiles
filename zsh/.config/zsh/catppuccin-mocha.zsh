setopt PROMPT_SUBST

blue='#89B4FA'
green='#A6E3A1'
lavender='#B4BEFE'
overlay0='#6C7086'
overlay2='#ACB0BE'
pink='#F5C2E7'
red='#F38BA8'

os_icon='󰌽'
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

  echo -n "%F{$lavender} ${branch}%f"
}

PROMPT='%F{$overlay2}${os_icon} %f'
PROMPT+='%F{$blue}%n@%m%f '
PROMPT+='%F{$pink}$(custom_path)%f '
PROMPT+='$(git_info)'
PROMPT+=$'\n'
PROMPT+='%(?.%F{$green}.%F{$red})❯%f '

RPROMPT='%F{$overlay0}%*%f'
