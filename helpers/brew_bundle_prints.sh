brew_bundle_prints(){
    while read input; do
        verb=$(echo $input|awk '{print $1}')
        target=$(echo $input|awk '{print $2}')
        case $verb in
        *Using* ) printf "${YELLOW}-  ${UNDERLINE}$target${YELLOWTHIN} already installed${NC}\n";;
        *Installing* )
            if [[ $input =~ failed! ]]; then
                printf "${RED}x  ${UNDERLINE}$target${REDTHIN} failed${NC}\n"
            else
                printf "${GREEN}✔  ${UNDERLINE}$target${GREENTHIN} successfully installed${NC}\n"
            fi
        ;;
        esac
    done
}

## TODO: If installed NOT through cask, it turns into an error. This should be marked as "already installed"