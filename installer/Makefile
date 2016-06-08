USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make
#PB_EXTRA_ARGS+= --sign "Graham Pugh"
PB_EXTRA_ARGS+= --info "./PackageInfo"

TITLE=Munki-Install
PACKAGE_NAME=${TITLE}
REVERSE_DOMAIN=com.grahamrpugh
INSTALL_SCRIPT = munki2_standard.sh
INSTALLER_PKG = munkitools-2.pkg
INSTALLER_PKG_URL = http://munki-server:8080/repo/installers
PAYLOAD=\
  pack-server \
  pack-script-postinstall

pack-server:
	@sudo mkdir -p ${WORK_D}/Library/Management/munki-with-config/install_scripts
	@sudo mkdir ${WORK_D}/Library/Management/munki-with-config/installers
	@sudo ${CP} $(INSTALL_SCRIPT) ${WORK_D}/Library/Management/munki-with-config/install_scripts/
	@sudo curl -o ${WORK_D}/Library/Management/munki-with-config/installers/$(INSTALLER_PKG) $(INSTALLER_PKG_URL)/$(INSTALLER_PKG)
	@sudo chown -R root:wheel ${WORK_D}/Library/Management/munki-with-config/
	@sudo chmod -R 755 ${WORK_D}/Library/Management/munki-with-config/installers/
	@sudo chmod -R 755 ${WORK_D}/Library/Management/munki-with-config/install_scripts/
