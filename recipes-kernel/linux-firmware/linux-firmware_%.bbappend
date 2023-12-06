# required to support verification hardware.
PACKAGES =+ "${PN}-ibt-20-1-3"

FILES:${PN}-ibt-20-1-3  = " \
    ${nonarch_base_libdir}/firmware/intel/ibt-20-1-3.ddc* \
    ${nonarch_base_libdir}/firmware/intel/ibt-20-1-3.sfi* \
    "
