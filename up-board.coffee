deviceTypesCommon = require '@resin.io/device-types/common'
{ networkOptions, commonImg, instructions } = deviceTypesCommon

UPBOARD_FLASH = '''
	Power up the <%= TYPE_NAME %>. Make sure you have a keyboard connected.
	Press the F7 key while BIOS is loading in order to enter the boot menu. Next, select the "UEFI:" option.
'''

UPBOARD_POWERRESET = 'Unplug and plug power on your <%= TYPE_NAME %>.'

postProvisioningInstructions = [
	instructions.BOARD_SHUTDOWN
	instructions.REMOVE_INSTALL_MEDIA
	UPBOARD_POWERRESET
]

module.exports =
	version: 1
	slug: 'upboard'
	name: 'UP board'
	arch: 'amd64'
	state: 'experimental'

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_USB
		instructions.EJECT_USB
		instructions.FLASHER_WARNING
		UPBOARD_FLASH
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'http://docs.resin.io/#/pages/installing/gettingStarted-UPboard.md#windows'
		osx: 'http://docs.resin.io/#/pages/installing/gettingStarted-UPboard.md#on-mac-and-linux'
		linux: 'http://docs.resin.io/#/pages/installing/gettingStarted-UPboard.md#on-mac-and-linux'

	supportsBlink: true

	yocto:
		machine: 'up-board'
		image: 'resin-image-flasher'
		fstype: 'resinos-img'
		version: 'yocto-krogoth'
		deployArtifact: 'resin-image-flasher-up-board.resinos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	options: [ networkOptions.group ]

	initialization: commonImg.initialization
