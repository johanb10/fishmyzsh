alias -s fw="sudo firewall-cmd"
alias -s fwp="sudo firewall-cmd --permanent"
alias -s fwr="sudo firewall-cmd --reload"
alias -s fwrp="sudo firewall-cmd --runtime-to-permanent"
#
# function fwl () {
#   # converts output to zsh array ()
#   # @f flag split on new line
#   zones=("${(@f)$(sudo firewall-cmd --get-active-zones | grep -v 'interfaces\|sources')}")
#
#   for i in $zones; do
#     sudo firewall-cmd --zone $i --list-all
#   done
#
#   echo 'Direct Rules:'
#   sudo firewall-cmd --direct --get-all-rules
# }
