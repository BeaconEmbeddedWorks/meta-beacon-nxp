FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += "file://demos.json"

do_install:append() {
	install -D -m 0755    ${WORKDIR}/demos.json   ${D}/home/root/.nxp-demo-experience/demos.json
	sed  -i '/from gi.repository import Gtk, GLib, Gio/d' ${D}/home/root/.nxp-demo-experience/scripts/machine_learning/MLDemoLauncher.py
	sed  -i '/gi.require_version("Gtk", "3.0")/a from gi.repository import Gtk, GLib, Gio' ${D}/home/root/.nxp-demo-experience/scripts/machine_learning/MLDemoLauncher.py
}
