check_errs()
{
  if [ "${1}" -ne "0" ]; then
    printf "Error, exiting."
    exit ${1}
  fi
}