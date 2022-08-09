do_install:append () {
    echo "%admin ALL=(ALL) ALL" > ${D}${sysconfdir}/sudoers.d/001-admin
}

LICENSE = "BSD-2-Clause & BSD-3-Clause & MIT"
