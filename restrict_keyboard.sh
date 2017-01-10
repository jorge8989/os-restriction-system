#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

sudo rm /usr/share/X11/xkb/symbols/us;
sudo cp "$DIR/modified_us_layout" /usr/share/X11/xkb/symbols/us;
sudo rm /usr/share/X11/xkb/symbols/pc;
sudo cp "$DIR/modified_pc105_model" /usr/share/X11/xkb/symbols/pc;
