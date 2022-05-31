do_install:append() {
    sed -i "/alternate-sample-rate/d" ${D}${sysconfdir}/pulse/daemon.conf
    sed -i 's/; default-sample-rate = 44100/default-sample-rate = 48000/' ${D}${sysconfdir}/pulse/daemon.conf
}
