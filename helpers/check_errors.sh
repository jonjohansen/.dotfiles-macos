# Error checker that exits the program
# when it recieves something other than 0
check_errs()
{
  if [ "${1}" -ne "0" ]; then
    printf "${RED}Error - Exiting.${NC}\n"
    exit ${1}
  fi
}