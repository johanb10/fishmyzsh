set user_commands \
  cat \
  get-default\
  help \
  is-active \
  is-enabled \
  is-failed \
  is-system-running \
  list-dependencies \
  list-jobs \
  list-sockets \
  list-timers \
  list-unit-files \
  list-units \
  show \
  show-environment \
  status

set sudo_commands \
  add-requires \
  add-wants \
  cancel \
  daemon-reexec \
  daemon-reload \
  default \
  disable \
  edit \
  emergency \
  enable \
  halt \
  hibernate \
  hybrid-sleep \
  import-environment \
  isolate \
  kexec \
  kill \
  link \
  list-machines \
  load \
  mask \
  poweroff \
  preset \
  preset-all \
  reboot \
  reenable \
  reload \
  reload-or-restart \
  reset-failed \
  rescue \
  restart \
  revert \
  set-default \
  set-environment \
  set-property \
  start \
  stop \
  suspend \
  switch-root \
  try-reload-or-restart \
  try-restart \
  unmask \
  unset-environment

for c in $user_commands; alias -s sc-$c="systemctl $c"; end
for c in $sudo_commands; alias -s sc-$c="sudo systemctl $c"; end
for c in $user_commands; alias -s scu-$c="systemctl --user $c"; end
for c in $sudo_commands; alias -s scu-$c="systemctl --user $c"; end

alias -s sc-enable-now="sc-enable --now"
alias -s sc-disable-now="sc-disable --now"
alias -s sc-mask-now="sc-mask --now"

alias -s scu-enable-now="scu-enable --now"
alias -s scu-disable-now="scu-disable --now"
alias -s scu-mask-now="scu-mask --now"

# function systemd_prompt_info {
#   local unit
#   for unit in $@; do
#     echo -n "$ZSH_THEME_SYSTEMD_PROMPT_PREFIX"
#     [[ -n "$ZSH_THEME_SYSTEMD_PROMPT_CAPS" ]] && echo -n "${(U)unit}:" || echo -n "$unit:"
#     if systemctl is-active $unit &>/dev/null; then
#         echo -n "$ZSH_THEME_SYSTEMD_PROMPT_ACTIVE"
#     else
#         echo -n "$ZSH_THEME_SYSTEMD_PROMPT_NOTACTIVE"
#     fi
#     echo -n "$ZSH_THEME_SYSTEMD_PROMPT_SUFFIX"
#   done
# }
