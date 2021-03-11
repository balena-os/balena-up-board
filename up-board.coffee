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
	slug: 'up-board'
	name: 'UP Board'
	arch: 'amd64'
	state: 'released'
	private: false

	stateInstructions:
		postProvisioning: postProvisioningInstructions

	instructions: [
		instructions.ETCHER_USB
		instructions.EJECT_USB
		instructions.FLASHER_WARNING
		UPBOARD_FLASH
	].concat(postProvisioningInstructions)

	gettingStartedLink:
		windows: 'https://www.balena.io/docs/learn/getting-started/up-board/nodejs/'
		osx: 'https://www.balena.io/docs/learn/getting-started/up-board/nodejs/'
		linux: 'https://www.balena.io/docs/learn/getting-started/up-board/nodejs/'

	supportsBlink: true

	yocto:
		machine: 'up-board'
		image: 'balena-image-flasher'
		fstype: 'balenaos-img'
		version: 'yocto-warrior'
		deployArtifact: 'balena-image-flasher-up-board.balenaos-img'
		compressed: true

	configuration:
		config:
			partition:
				primary: 1
			path: '/config.json'

	options: [ networkOptions.group ]

	initialization: commonImg.initialization
