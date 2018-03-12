Change log
-----------

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
