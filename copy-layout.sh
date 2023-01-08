#!/bin/sh

##
## Copies `config/cyber60_rev_c.keymap` to the Rev C and Rev D subdirectories.
## The ZMK Keymap Configurator by Nick Coutsos
## requires that the keymap file to be configured
## must be in `[repository]/config/`.
##
## After using the configurator and committing the changes to the repository (from said configurator),
## run this script so that the newly edited `.keymap` file is copied
## to the subdirectories used by GitHub Actions/CI.
###
function main() {
    SOURCE_KEYMAP="config/cyber60_rev_c.keymap"

    DESTINATION_REV_C="config/boards/arm/cyber60_rev_c/cyber60_rev_c.keymap"
    DESTINATION_REV_D="config/boards/arm/cyber60_rev_d/cyber60_rev_d.keymap"

    cp $SOURCE_KEYMAP $DESTINATION_REV_C
    cp $SOURCE_KEYMAP $DESTINATION_REV_D
}

main

