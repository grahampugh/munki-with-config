#!/bin/bash 

########################
## The Munki Repo URL- change to suit your environment
## This can be commented out if your repo is at http://munki/repo

MUNKI_REPO_URL="https://munki.int.unic.com/repo"

# Sets the URL to the Munki Repository
defaults write /Library/Preferences/ManagedInstalls SoftwareRepoURL "$MUNKI_REPO_URL"


########################
## Run at first boot/installation:
## The existence of this file prods Munki to check for and install updates upon startup
## If you'd rather your clients waited for an hour or so, comment this out

touch /Users/Shared/.com.googlecode.munki.checkandinstallatstartup


########################
## ClientIdentifier - it is recommended to leave this blank. Munki will automatically 
## check for the presence of a manifest matching the serial number, then matching the 
## local hostname, then matching "site_default". Only uncomment these lines if you are
## doing something different.

# Possible options include a manually entered value:

#IDENTIFIER="site_default"

# The Local Host Name could be used. Don't use "ComputerName" as this may contain bad characters

#LOCALHOSTNAME=$( scutil --get LocalHostName );
#IDENTIFIER=$LOCALHOSTNAME

# The serial number could be used.

#SERIALNUMBER=$( system_profiler SPHardwareDataType | grep 'Serial Number (system)' | awk '{print $NF}' );
#IDENTIFIER=$SERIALNUMBER

#defaults write /Library/Preferences/ManagedInstalls ClientIdentifier "$IDENTIFIER"

## Apple Software Updates:
## This setting determines whether Munki should handle Apple Software Updates
## Set to false if you want Munki to only deal with third party software
## The default is True

#defaults write /Library/Preferences/ManagedInstalls InstallAppleSoftwareUpdates -bool True


########################
## Munki-Enroll settings
## This can all be hashed out if you're not using Munki-enroll

# Application paths
#CURL="/usr/bin/curl"
 
# $CURL --max-time 5 --data \
# 	"hostname=$LOCALHOSTNAME&identifier=$IDENTIFIER" \
# 	$SUBMITURL
#
  
exit 0