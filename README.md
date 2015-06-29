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

1. We start with a fresh install of Ubuntu 14.04 from [armhf.com](http://www.armhf.com/boards/beaglebone-black/bbb-sd-install/) using `dd`
