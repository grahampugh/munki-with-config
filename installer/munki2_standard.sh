#!/bin/bash 

# The Munki Repo URL- change to suit your environment
MUNKI_REPO_URL="http://munki-server:8080/repo"

# The ClientIdentifier - the default is "_cg_ru"
IDENTIFIER="default"

# This setting determines whether Munki should handle Apple Software Updates
# Set to false if you want Munki to only deal with third party software
defaults write /Library/Preferences/ManagedInstalls InstallAppleSoftwareUpdates -bool True

# The existence of this file prods Munki to check for and install updates upon startup
# If you'd rather your clients waited for an hour or so, comment this out
touch /Users/Shared/.com.googlecode.munki.checkandinstallatstartup

# Leave this unless you have put your munki-enroll script somewhere unusual
# Hash out if you're not using Munki-enroll
#SUBMITURL="$MUNKI_REPO_URL/munki-enroll/enroll.php"

# Figures out the computer's local host name - don't use ComputerName as this may contain bad characters
# LOCALHOSTNAME=$( scutil --get LocalHostName );

# set the ClientIdentifier to "client-LOCALHOSTNAME
defaults write /Library/Preferences/ManagedInstalls ClientIdentifier "$IDENTIFIER"

# Sets the URL to the Munki Repository
defaults write /Library/Preferences/ManagedInstalls SoftwareRepoURL "$MUNKI_REPO_URL"

# Application paths
#CURL="/usr/bin/curl"
# 
# This can all be hashed out if you're not using Munki-enroll
# $CURL --max-time 5 --data \
# 	"hostname=$LOCALHOSTNAME&identifier=$IDENTIFIER" \
# 	$SUBMITURL
#  
exit 0