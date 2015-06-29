# [Eth(Embedded)](http://www.ethembedded.com) [Beaglebone Black](http://beagleboard.org/BLACK)/[Ethereum](https://www.ethereum.org/) Install Instructions

### Supported Boards:
  BeagleBone Black

### Materials Needed:
- Beaglebone Black development board
- 64GB micro SD Card  
- Power Supply for BBB(minimum 5VDC 1Amp mini USB or 5VDC standard barrel connector)
- Ethernet cable (to connect to available, DHCP enabled, internet router)

##### Note: although 64GB is not immediately necessary, as the ethereum blockchain grows you will need the room to 		store it. (At least until SPV is available) Another strong suggestion is to use Class 10 SanDisk Ultra or Extreme models with higher R/W speeds

### Optional Materials:
- Micro HDMI->HDMI cable
- Monitor with HDMI input(or apropriate adapter)
- USB Keyboard

### Installation Method 
###### *Disclaimer* - If you will be formatting an SD card be aware that you will be deleting all information stored on said card.  Eth(Embedded) is *NOT*  responsible for any data loss that may occur during the format process.

1. Insert your FAT32 formatted SD card into your linux PC or Laptop. Next we will install Ubuntu 14.04 following the instructions from http://www.armhf.com/boards/beaglebone-black/bbb-sd-install/
2. Once you have completed the instructions from www.armhf.com, safely remove and install SD card into a powered down BeagleBone Black with ethernet cable connected between BBB and an internet enabled DHCP router.
3. Power on your BBB.
4. While the BBB is booting, we need to log in to our router and look at the dhcp client list to find the IP address assigned to our BBB device, alternately you can use one of my favorite mobile apps, [FING](https://play.google.com/store/apps/details?id=com.overlook.android.fing&hl=en), as long as your android phone is connected to the same network. We can then, using a linux cli or [putty](http://www.putty.org/), ssh[(instructions)](https://learn.adafruit.com/adafruits-raspberry-pi-lesson-6-using-ssh/using-ssh-on-a-mac-or-linux) into the device with the following *default* credentials:
5. - login : `ubuntu`
- password: `ubuntu`

6. At this point, before we move forward, lets take the opportunity to change the `ubuntu` users password: 

- at the command prompt type: `passwd` and follow on screen instructions...

6. Next lets download, unzip, and choose eth-install.sh OR geth-install.sh:

	`wget https://github.com/EthEmbedded/`

	`tar -xvzf v0.1.7.tar.gz`
	
	`cd BBB-Eth-Install`

	`sudo chmod +x geth-install.sh` OR `sudo chmod +x eth-install.sh` 
	
8. Now lets run the install script for either `geth` or `eth`

	`./geth-install.sh`
	
	OR
	
	`./eth-install.sh`
	
9. Finally lets start the client:

	For `geth` :
	
	`cd ~/go-ethereum/build/bin`
	
	`./geth`
	
	For `eth`:
	
	`cd ~/cpp-ethereum/build/eth`
	
	`./eth`

####For more info regarding running cli clients please visit the following links:

For geth/go-ethereum visit: https://github.com/ethereum/go-ethereum/wiki/Command-Line-Options

For eth/cpp-ethereum visit: https://github.com/ethereum/cpp-ethereum/wiki/Using-Ethereum-CLI-Client

####For more information regarding the BeagleBone Black visit:

Main Homepage: http://www.beagleboard.com/Black

Additional info: http://eewiki.net/display/linuxonarm/BeagleBone+Black

####What now?

*To learn more about Ethereum.org get involved!*

A great place to start are the forums at https://forum.ethereum.org/

OR

Learn more about creating DApps by visiting https://dappsforbeginners.wordpress.com/
