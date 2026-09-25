# remove big microcode firmware that is never used in the Up Board family
# this list can be added to in the future if we ever need extra space
do_install:append() {
	# Sierra Forest (Intel Xeon 6 Server Processors - datacenter processors)
	rm ${D}${nonarch_base_libdir}/firmware/intel-ucode/06-af-03

	# Sapphire Rapids (4th Gen Intel Xeon Scalable Processors - datacenter processors)
	rm ${D}${nonarch_base_libdir}/firmware/intel-ucode/06-8f-*
}
