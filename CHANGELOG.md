Change log
-----------

# v2.26.0+rev4
## (2018-12-17)

* Switch from resin-yocto-scripts to balena-yocto-scripts [Florin Sarbu]

# v2.26.0+rev3
## (2018-11-15)

* Remove kernel version 4.14 and keep using version 4.9.56 from the BSP [Florin Sarbu]

# v2.26.0+rev2
## (2018-11-14)

* Fix HDMI audio [Florin Sarbu]

# v2.26.0+rev1
## (2018-11-09)

* Update the meta-resin submodule from v2.14.0 to v2.26.0 [Florin Sarbu]

<details>
<summary> View details </summary>

## meta-resin-2.26.0
### (2018-11-05)

* Rename resin-unique-key to balena-unique-key [Andrei Gherzan]
* Don't let resin-unique-key rewrite config.json [Andrei Gherzan]

## meta-resin-2.25.0
### (2018-11-02)

* Generate ssh host key at first boot (not at first connection) [Andrei Gherzan]
* Fix extraneous space in kernel-resin.bbclass config [Florin Sarbu]
* Drop obsolete eval from kernel-resin's do_kernel_resin_reconfigure [Florin Sarbu]
* Add SyslogIdentifier for balena and resin-supervisor healthdog services [Matthew McGinn]

## meta-resin-2.24.1
### (2018-11-01)

* Update resin-supervisor to v8.0.0 [Pablo Carranza Velez]

## meta-resin-2.24.0
### (2018-10-24)

* resin-info: Small tweak for balenaCloud product [Andrei Gherzan]
* Update resin-supervisor to v7.25.8 [Pablo Carranza Velez]
* Rename resinOS to balenaOS [Andrei Gherzan]

## meta-resin-2.23.0
### (2018-10-22)

* Update resin-supervisor to v7.25.5 [Cameron Diver]
* recipes-containers: Increase healthcheck timeout to 180s [Gergely Imreh]
* .gitignore: add node_modules and package-lock files [Giovanni Garufi]

## meta-resin-2.22.1
### (2018-10-20)

* Update resin-supervisor to v7.25.3 [Pablo Carranza Velez]

## meta-resin-2.22.0
### (2018-10-19)

* Update resin-supervisor to v7.25.2 [Andrei Gherzan]
* Include a CONTRIBUTING.md file [Andrei Gherzan]
* Update to ModemManager v1.8.2 [Andrei Gherzan]
* Updates on contributing-device-support.md [Vicentiu Galanopulo]

## meta-resin-2.21.0
### (2018-10-18)

* Improve systemd service ordering in rollbacks [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v7.24.1 [Andrei Gherzan]

## meta-resin-2.20.0
### (2018-10-18)

* Avoid expander on flasher based on root kernel argument [Andrei Gherzan]
* resin-vars: Implement custom ssh keys service [Andrei Gherzan]
* Fix redsocks interface creation when no proxy configured [Andrei Gherzan]
* Replace NM's DHCP request option "Client indentifier" with udhcpc style option [Sebastian Panceac]
* Fix for rollbacks in case of old balenaOS version [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v7.21.4 [Cameron Diver]
* Warn if rules are found in /etc/udev/rules.d [Zubair Lutfullah Kakakhel]
* Add support to load custom udev rules from config.json [Zubair Lutfullah Kakakhel]
* aufs-util: Package auplink separately [Florin Sarbu]
* Enable kernel config dependencies for MBIM and QMI [Florin Sarbu]
* Set UPX to use LZMA compression by default [Andrei Gherzan]
* Downgrade UPX to 3.94 for ARM [Andrei Gherzan]
* Balena update for rollbacks. mobynit can now mount rootfs from sysroot. [Zubair Lutfullah Kakakhel]
* Fix proxy when using containers over bridge network [Andrei Gherzan]
* Add support for aufs 4.9.9+, 4.9.94+, 4.18 [Florin Sarbu]
* Add rollback-altboot service before balena service [Zubair Lutfullah Kakakhel]
* Add Automated Rollback recipe [Zubair Lutfullah Kakakhel]
* Add Automated Rollback support in u-boot env_resin.h [Zubair Lutfullah Kakakhel]
* Add a hook to support Automated Rollbacks [Zubair Lutfullah Kakakhel]
* Update HUP grub hook to support Automated Rollbacks [Zubair Lutfullah Kakakhel]
* Update HUP u-boot hook to support Automated Rollbacks [Zubair Lutfullah Kakakhel]
* Move kernel-image-initramfs from resin-image recipe to packagegroup-resin.inc [Zubair Lutfullah Kakakhel]
* Have 99-resin-grub hostapp-update-hook decide which grub to use [Florin Sarbu]

## meta-resin-2.19.0
### (2018-09-23)

* Update Balena to fix tty console hanging in some cases [Petros Angelatos]
* Pin down cargo deps (using Cargo.lock) to versions known working with rust 1.24.1 (for sumo) [Florin Sarbu]
* Remove duplicate packaging of bcm43143 [Florin Sarbu]
* Set ModemManager to ignore Inca Roads Serial Device [Petros Angelatos]
* Add support for aufs 4.14.56+ [Florin Sarbu]
* Update resin-supervisor to v7.19.7 [Cameron Diver]

## meta-resin-2.18.1
### (2018-09-14)

* Add a parsable representation of the changelog [Giovanni Garufi]

## meta-resin-v2.18.0
### (2018-09-12)

* Update grub hooks to prepare to load kernel from root [Zubair Lutfullah Kakakhel]
* Update resin-supervisor to v7.19.4 [Cameron Diver]
* Kernel-resin.bbclass: Enable CONFIG_IP_NF_TARGET_LOG as a module [John (Jack) Brown]
* Balena: Update to current HEAD of 17.12-resin [Andrei Gherzan]
* Compress os-config with UPX on arm64 too [Andrei Gherzan]
* Update upx to 3.95 [Andrei Gherzan]
* Add support to skip flasher detection in env_resin.h [Zubair Lutfullah Kakakhel]
* Add the kernel to the rootfs [Zubair Lutfullah Kakakhel]
* Rework resin-supervisor systemd dependency on balena [Florin Sarbu]
* Enhanced security options for dropbear - sumo [Andrei Gherzan]
* Enhanced security options for dropbear - rocko [Andrei Gherzan]
* Enhanced security options for dropbear - pyro [Andrei Gherzan]
* Enhanced security options for dropbear - morty [Andrei Gherzan]
* Enhanced security options for dropbear - krogoth [Andrei Gherzan]

## meta-resin-2.17.0
### (2018-09-03)

* Resin-proxy-config: The no_proxy file fails to parse when missing EOL [Rich Bayliss]

## meta-resin-2.16.0
### (2018-08-31)

* Os-config: UPX is broken on aarch64 [Theodor Gherzan]
* Allow flasher types to pin preloaded devices [Theodor Gherzan]
* Disable PIE for go [Zubair Lutfullah Kakakhel]
* Disable PIE for balena [Zubair Lutfullah Kakakhel]

## meta-resin-2.15.0
### (2018-08-28)

* Bump balena version to latest 17.12-resin [Zubair Lutfullah Kakakhel]
* Update NetworkManager to 1.12.2 [Andrei Gherzan]
* Avoid os-config-devicekey / uuid service race [Andrei Gherzan]
* Move the rw copy of config.json out of /tmp for flasher [Andrei Gherzan]
* Fix dashboard feedback on fast flashing devices [Andrei Gherzan]
* Fix ucl dependency in upx [Andrei Gherzan]
* Update kernel-modules-headers to v0.0.11 [Andrei Gherzan]

## meta-resin-2.14.3
### (2018-08-13)

* Update resin supervisor to v7.16.6 [Cameron Diver]

## meta-resin-2.14.2
### (2018-08-13)

* Update usb-modeswitch to version 2.5.0 [Florin Sarbu]
* Fix kernel-modules-headers compile missing bio.h [Florin Sarbu]
* Enable kernel config CONFIG_USB_SERIAL_CP210X as module [Andrei Gherzan]
* Update resin supervisor to v7.16.4 [Cameron Diver]

## meta-resin-2.14.1
### (2018-08-02)

* Fix ModemManager journald logs [Andrei Gherzan]
* Fix openvpn journald logs [Andrei Gherzan]
* Set maximum openvpn reconnect timeout to 2 minutes [Andrei Gherzan]
* Resin-image: Handle absolute paths in RESIN_BOOT_PARTITION_FILES [Andrei Gherzan]
* Exclude writable files from image's fingerprints file [Andrei Gherzan]
* Update resin-supervisor to v7.16.2 [Andrei Gherzan]
* Use v4 API calls, move auth token into the request header [Gergely Imreh]
* Fix no-pie variable name in tini rocko [Andrei Gherzan]
* Fix alternative builds warnings in busybox [Andrei Gherzan]
* Don't compile mobynit in rocko with PIE [Andrei Gherzan]
* Fix key replace build warnings [Andrei Gherzan]
* Update go in krogoth to v1.9.4 [Andrei Gherzan]
* Update go in morty to v1.9.4 [Andrei Gherzan]
* Update go in pyro to v1.9.4 [Andrei Gherzan]
* Update balena to version 17.12 [Andrei Gherzan]
* Fix when ntp servers passed via config.json and dhcp [Zubair Lutfullah Kakakhel]
* Disable PIE for the aufs-util package for Rocko boards [Andrei Gherzan]
* Disable PIE for the aufs-util package for Sumo boards [Florin Sarbu]
* Update resin supervisor to v7.16.0 [Andrei Gherzan]
* Document supported modems [Andrei Gherzan]

## meta-resin-2.14.0
### (2018-07-17)

* Allow re-run of useradd commands in docker-disk's entry.sh [Andrei Gherzan]
* Update rust to 1.20 and cargo to 0.21.0 in Morty [Andrei Gherzan]
* Update rust to 1.20 and cargo to 0.21.0 in Krogoth [Andrei Gherzan]
* Unify managed and unmanaged images and introduce os-config [Andrei Gherzan]
</details>

* Update the resin-yocto-scripts submodule to master HEAD [Florin Sarbu]
* Add firmware for Intel AC3160 m.2 2230 wireless adapters [Florin Sarbu]

# v2.14.0+rev1
## (2018-07-18)

* Update the meta-resin submodule to version v2.14.0 [Florin]
* Update the resin-yocto-scripts submodule to 59ccd8558435ff6424827fb36ccb43b14650f4d4 (on master branch) [Florin]

# v2.13.3+rev1
## (2018-07-05)

* Update the meta-resin submodule to version v2.13.3 [Florin]
* Update the resin-yocto-scripts submodule to 6eddcc9a637e00dbca94815f9af0f2b7bf61eb88 (on master branch) [Florin]
* Use kernel version 4.14 to allow audio over HDMI [Florin]

# v2.12.7+rev1
## (2018-05-04)

* Update the meta-resin submodule to version v2.12.7 [Florin]
* Update the resin-yocto-scripts submodule to f7718efbbf53369aaacb7eb54e707ee8a5d4fc4b (on master branch) [Florin]

# v2.12.5+rev2
## (2018-03-27)

* Update the resin-yocto-scripts submodule to 9cecb1ca4d9d4713dd337148b7d04a17afdba772 (on master branch) [Florin]

# v2.12.5+rev1
## (2018-03-27)

* Update the meta-resin submodule to version v2.12.5 [Florin]
* Update the resin-yocto-scripts submodule to 51b8849e2a02d0d4e729bff24909d9746e0bf4c3 (on master branch) [Florin]

# v2.12.3+rev1
## (2018-03-15)

* Update the meta-resin submodule to version v2.12.3 [Florin]

# v2.12.1+rev1
## (2018-03-12)

* Update the meta-resin submodule to version v2.12.1 [Andrei]

# v2.10.1+rev1
## (2018-03-01)

* Update the meta-resin submodule to version v2.10.1 [Florin]
* Update the resin-yocto-scripts submodule to dc9dfe466e48d934e55fb20a05156886873b1ab1 (on master branch) [Florin]
* Add brcmfmac43430 WiFi firmware from UP website in rootfs image (needed for UP Core board) [Sebastian]

# v2.9.7+rev2
## (2018-02-02)

* Update the resin-yocto-scripts submodule to b95f9387738afac72a58ca787c1224e8331b5fb1 (on master branch) [Florin]
* Add entry for the disabling of random MAC address generation when scanning for a WiFi connection [Florin]

# v2.9.7+rev1
## (2018-01-27)

* Update the meta-resin submodule to version v2.9.7 [Florin]
* Update meta-up-board to current pyro HEAD [Andrei]

# v2.9.6+rev1
## (2018-01-14)

* Update the meta-resin submodule to version v2.9.6 [Florin]
* Update the resin-yocto-scripts submodule to 6f7a9ab326bb822196e3e48b08ef1d73d08caec6 (on master branch) [Florin]
* Update meta-rust to pyro which was missed at last update [Andrei]

# v2.7.8+rev1
## (2017-11-17)

* Update the meta-resin submodule to version v2.7.8 [Florin]

# v2.7.6+rev1
## (2017-11-08)

* Update the meta-resin submodule to version v2.7.6 [Florin]
* Install in the rootfs the 99-resin-grub hostapp hook needed for GRUB to switch the root partition when doing host OS updates [Florin]
* Promote board to released from experimental [Florin]
* Update the resin-yocto-scripts submodule to c4db082fd2d5a3b4857035264c1e726962d7b826 (on master branch) [Florin]
* Update to Pyro [Florin]
* Update meta-rust to morty [Will]
* Include meta-rust layer [Will]
* Add meta-rust layer [Will]

# v2.3.0+rev1
## (2017-08-17)

* Update the meta-resin submodule to version v2.3.0 [Florin]

# v2.2.0+rev1
## (2017-07-30)

* Update the meta-resin submodule to version v2.2.0 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]

# v2.1.0+rev1
## (2017-07-24)

* Update the meta-resin submodule to version v2.1.0 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]

# v2.0.9+rev1
## (2017-07-12)

* Update the meta-resin submodule to version v2.0.9 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]

# v2.0.8+rev1
## (2017-07-06)

* Update the meta-resin submodule to version v2.0.8 [Florin]
* Update the resin-yocto-scripts submodule to HEAD of master [Florin]
* Update the .coffee getting started links [Florin]
* Update the resin-yocto-scripts submodule [Florin]

# v2.0.4+rev1
## (2017-05-22)

* Update the meta-resin submodule to version v2.0.4 [Florin]
* Update resin-yocto-scripts to master [Will]

# v2.0.2+rev2
## (2017-05-01)

* Bump resin-yocto-scripts to fix Jenkins deployment [Andrei]

# v2.0.2+rev1
## (2017-04-24)

* Update the meta-resin submodule to version v2.0.2 [Andrei]

# v2.0.0+rev3
## (2017-04-13)

* Bump resin-yocto-scripts to include deployment routine [Andrei]

# v2.0.0+rev2
## (2017-04-04)

* Bump resin-yocto-scripts to fix resinOS docker registry push [Andrei]

# v2.0.0+rev1
## (2017-04-03)

* Fix OS version to be semver compliant [Andrei]

# v2.0.0.rev1
## (2017-04-01)

* Update the meta-resin submodule to version v2.0.0 [Andrei]

# v2.0.0-rc6.rev1
## (2017-03-31)

* Update the meta-resin submodule to version v2.0.0-rc6 [Andrei]

# v2.0.0-rc5.rev1
## (2017-03-26)

* Drop the external initramfs and only use the initramfs bundled in the kernel [Florin]
* Update the meta-resin submodule to version v2.0.0-rc5 [Florin]
* Do not show kernel boot messages on the display for production images [Florin]

# v2.0.0-rc4.rev1
## (2017-03-20)

* Bump meta-resin to v2.0.0-rc4 [Andrei]

# v2.0.0-rc3.rev1
## (2017-03-14)

* Bump meta-resin to v2.0.0-rc3 [Andrei]

# v2.0.0-rc2.rev1
## (2017-03-14)

* Switch to the kernel with the initramfs bundled in [Florin]
* Integrate the older initramfs with the new initramfs framework [Florin]

# v2.0.0-beta13.rev3
## (2017-03-03)

* Fix flasher images [Andrei]

# v2.0.0-beta13.rev2
## (2017-02-28)

* Fix partition labels from last meta-resin update [Andrei]
* Change slug to up-board [Andrei]

# v2.0.0-beta13.rev1
## (2017-02-27)

* Bump resin-yocto-scripts to current HEAD [Andrei]
* meta-resin: Bump to 2.0.0-beta13 [Andrei]

# v2.0.0-beta11.rev1
## (2017-02-15)

* Initial board support [Andrei]
