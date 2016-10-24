USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make
#PB_EXTRA_ARGS+= --sign "Your Org"
PB_EXTRA_ARGS+= --info "./PackageInfo"

BRANDING=YourOrg
TITLE=Munki-${BRANDING}-Install
PACKAGE_NAME=${TITLE}
REVERSE_DOMAIN=com.${BRANDING}
INSTALL_SCRIPT = munki_config.sh
MUNKI_LATEST=`/usr/bin/curl https://api.github.com/repos/munki/munki/releases/latest | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["assets"][0]["browser_download_url"]'`
PACKAGE_VERSION=`/usr/bin/curl https://api.github.com/repos/munki/munki/releases/latest | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["assets"][0]["browser_download_url"]' | sed -n -e 's/.*munkitools-\(.*\).pkg/\1/p'`

PAYLOAD=\
  pack-server \
  pack-script-postinstall

pack-server:
	@sudo mkdir -p ${WORK_D}/Library/Management/munki-with-config/installers
	@sudo /usr/bin/curl -L ${MUNKI_LATEST} -o ${WORK_D}/Library/Management/munki-with-config/installers/munki-latest.pkg
	@sudo mkdir -p ${WORK_D}/Library/Management/munki-with-config/install_scripts
	@sudo ${CP} $(INSTALL_SCRIPT) ${WORK_D}/Library/Management/munki-with-config/install_scripts/munki_config.sh
	@sudo chown -R root:wheel ${WORK_D}/Library/Management/munki-with-config/
	@sudo chmod -R 755 ${WORK_D}/Library/Management/munki-with-config/installers/
	@sudo chmod -R 755 ${WORK_D}/Library/Management/munki-with-config/install_scripts/

