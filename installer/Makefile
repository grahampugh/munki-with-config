USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make
#PB_EXTRA_ARGS+= --sign "Your Org"
PB_EXTRA_ARGS+= --info "./PackageInfo"

BRANDING=YourOrg
TITLE=Munki-${BRANDING}-Install
PACKAGE_NAME=${TITLE}
PACKAGE_VERSION=2.8.0.2810
REVERSE_DOMAIN=com.${BRANDING}
INSTALL_SCRIPT = munki_config.sh
MUNKI_LATEST=`curl https://api.github.com/repos/munki/munki/releases/latest | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["assets"][0]["browser_download_url"]'`

PAYLOAD=\
  pack-server \
  pack-script-postinstall

pack-server:
	@sudo mkdir -p ${WORK_D}/Library/Management/munki-with-config/installers
	@sudo curl -L ${MUNKI_LATEST} -o ${WORK_D}/Library/Management/munki-latest.pkg
	@sudo mkdir -p ${WORK_D}/Library/Management/munki-with-config/install_scripts
	@sudo ${CP} $(INSTALL_SCRIPT) ${WORK_D}/Library/Management/munki-with-config/install_scripts/munki_config.sh
	@sudo chown -R root:wheel ${WORK_D}/Library/Management/munki-with-config/
	@sudo chmod -R 755 ${WORK_D}/Library/Management/munki-with-config/installers/
	@sudo chmod -R 755 ${WORK_D}/Library/Management/munki-with-config/install_scripts/

