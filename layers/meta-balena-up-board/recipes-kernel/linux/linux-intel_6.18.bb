require linux-intel.inc

SRC_URI:prepend = "git://github.com/intel/linux-intel-lts.git;protocol=https;name=machine;branch=${KBRANCH}; \
                    "
KBRANCH = "6.18/linux"
KMETA_BRANCH = "yocto-6.18"

LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"

DEPENDS += "elfutils-native openssl-native util-linux-native"

LINUX_VERSION_EXTENSION ??= "-intel-pk-${LINUX_KERNEL_TYPE}"

LINUX_VERSION ?= "6.18.33"
SRCREV_machine ?= "a9f2f3b43edac043dcca612544d2251ceaba0b8d"
SRCREV_meta ?= "4101033495af309ba83fc76eb3c0cbd0fb030f8c"

# Functionality flags
KERNEL_EXTRA_FEATURES ?= "features/netfilter/netfilter.scc \
                            features/security/security.scc \
                            features/intel-npu/intel-npu.scc"

UPSTREAM_CHECK_GITTAGREGEX = "^lts-(?P<pver>v6.18.(\d+)-linux-(\d+)T(\d+)Z)$"
