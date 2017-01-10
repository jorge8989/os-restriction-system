#!/bin/bash

sudo rm /usr/share/X11/xkb/symbols/us;
sudo cp ./original_us_layout /usr/share/X11/xkb/symbols/us;
sudo rm /usr/share/X11/xkb/symbols/pc;
sudo cp ./original_pc105_model /usr/share/X11/xkb/symbols/pc;

