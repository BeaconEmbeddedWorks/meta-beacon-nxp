do_install() {
	install -d  ${D}${nonarch_base_libdir}
	tar -xjf ${S}/${LWB_PART_NAME}.tar.bz2 -C ${D}${nonarch_base_libdir} --strip-components=1 --no-same-owner
}
