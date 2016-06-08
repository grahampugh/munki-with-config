# Munki-with-config

This requires The Luggage and will package up munkitools2 and the config script into a package for distribution.

*NOTE: Can only be run on the DeployStudio server as that is where the scripts and packages are located.*

The Luggage is a pre-requisite for this system: (https://github.com/unixorn/luggage)

* `installer` folder contains files to make a configured munki installer
* `uninstaller` folder contains files to make a munki uninstaller

**To make a package:** 
Run: `make pkg`

Move the packages to their own folder out of github before committing any changes.

**To make the DMG:**
Put `dmg-all.sh` in the same folder as the installer and uninstaller packages (and make sure there are no 
other packages in that folder 


```
#!shell

$ ./dmg-all.sh 
```


The DMG should be put into smb://web-srv.bris.ac.uk/www/is/media/advice/operatingsystems/mac
to make it available to end users.