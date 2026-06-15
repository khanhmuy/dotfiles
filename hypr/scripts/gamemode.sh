#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption animations:enabled | awk 'NR==1{print $2}')
if [ "$HYPRGAMEMODE" = true ] ; then
    hyprctl eval "hl.config({\
        animations = {enabled = false}, \
        decoration = {blur = {enabled = false}}, \
        general = {gaps_in = 2, gaps_out = 0}, \
        })"
    exit
fi
hyprctl reload