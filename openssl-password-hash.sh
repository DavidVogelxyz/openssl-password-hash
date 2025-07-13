#!/bin/sh

ask_static_salt() {
    read -r -p "Please provide a static salt. " static_salt

    echo "$static_salt"
}

gen_pass_words() {
    static_salt=$(ask_static_salt)

    openssl passwd -salt $static_salt -6
}

gen_pass_words
