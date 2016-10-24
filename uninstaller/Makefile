USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make
#PB_EXTRA_ARGS+= --sign "Your Name"
PB_EXTRA_ARGS+= --info "./PackageInfo"

BRANDING=YourOrg
TITLE=Munki-${BRANDING}-Uninstall
PACKAGE_NAME=${TITLE}
REVERSE_DOMAIN=com.${BRANDING}
PAYLOAD=\
  pack-script-postinstall
