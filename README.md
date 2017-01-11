# OS restriction for ubuntu kiosks

This might help you with your kiosk app that runs on Ubuntu,
preventing the user to bypass the internet browser or manipulate the browser
using the available keyboard shortcuts.

## Usage
### Initial setup / disable the keyboard
Execute the restrict_keyboard.sh script.
``` 
./restrict_keyboard.sh
```

This will make a couple of things:

- It will **permanently** disable some keys
that are used to manipulate the internet browser.
After running this script, changes will take effect after a
new login (logout and then login) or a system restart.

- It will modify the keyboard layout *"English (US, international with dead keys)"*,
so it can be used to re-enable the disabled keys (assuming it's not the default layout).

### Re-enable the keyboard
To re-enable the keyboard, run

``` 
setxkbmap -layout us -variant intl
```
This will select the *"English (US, international with dead keys)"* layout, re-enabling 
the disabled keys, as mentioned above.

That's it!

### Restore your keyboard
If you want to permanently re-enable your keyboard and restore your config files to their original state.
run the restore_keyboard.sh script.

``` 
./restore_keyboard.sh
```

