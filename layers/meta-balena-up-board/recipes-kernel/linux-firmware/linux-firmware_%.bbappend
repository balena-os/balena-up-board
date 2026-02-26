PACKAGES =+ "${PN}-i915-upboards ${PN}-rtl-nic-upboards"

FILES:${PN}-i915-upboards = " \
    ${nonarch_base_libdir}/firmware/i915/adlp_dmc.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/adlp_dmc_ver2_16.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/adlp_guc_70.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/bxt_dmc_ver1_07.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/glk_dmc_ver1_04.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/glk_guc_70.1.1.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/glk_huc_4.0.0.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/kbl_dmc_ver1* \
    ${nonarch_base_libdir}/firmware/i915/kbl_guc_70.1.1.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/kbl_guc_ver9_39.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/kbl_huc_* \
    ${nonarch_base_libdir}/firmware/i915/mtl_dmc.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/mtl_gsc_1.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/mtl_guc_70.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/mtl_huc_gsc.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/tgl_dmc_ver2_12.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/tgl_guc_70.bin.xz \
    ${nonarch_base_libdir}/firmware/i915/tgl_huc.bin.xz \
    ${nonarch_base_libdir}/firmware/intel/ipu/ipu6epadln_fw.bin.xz \
"

FILES:${PN}-rtl-nic-upboards = " \
    ${nonarch_base_libdir}/firmware/rtl_nic/rtl8168h-2.fw.xz \
"
