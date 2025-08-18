#!/bin/sh

ask_static_salt() {
    read -r -p "Please provide a static salt. " static_salt
}

main() {
    ask_static_salt

    openssl passwd -salt $static_salt -6
}

main
