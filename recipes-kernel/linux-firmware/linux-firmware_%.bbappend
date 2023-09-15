# Copyright LogicPD, Inc. dba Beacon EmbeddedWorks


addtask post_install_edit after do_install  before do_package

do_post_install_edit() {
    	sed -i -e '/sdiouart8997_combo_v4.bin/a \\ttxpwrlimit_cfg=nxp/txpower_bcn_US.bin' ${D}${nonarch_base_libdir}/firmware/nxp/wifi_mod_para.conf
}
