PACKAGES =+ "${PN}-i915-upboards"

FILES:${PN}-i915-upboards = " \
    ${nonarch_base_libdir}/firmware/i915/adlp_dmc.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/bxt_dmc_ver1_07.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/mtl_dmc.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/mtl_gsc_1.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/mtl_guc_70.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/mtl_huc_gsc.bin.xz \
"
