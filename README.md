# Fresh Install

All my favourite applications and some basic configuration to get going on a new computer.

Check [this](https://github.com/Integralist/Fresh-Install/) in case you want to upgrade this whole things.

## Step by Step

- Download personal apps script ```curl https://raw.githubusercontent.com/javifr/Fresh-Install/master/provision.sh >> ~/.laptop.local```
- Download work script ```curl --remote-name https://raw.githubusercontent.com/jobtitude/laptop/master/mac >> ~/mac```
- Execute script ```sh ~/mac 2>&1 | tee ~/laptop.log```
- Execute the command ```defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder``` so I can see hidden files in Finder
- Install manual software listed below
 
## Manual Software installation

- Adobe Photoshop
- Microsoft Office
- uTorrent

## Manual Music Software installation

- Apogee Maestro 
- Rme Fireface UC Software ( TotalMix , etc.. )
- Ableton Live 9 ( cask: ableton-live-suite )
- Minitaur 
- Waves
- iZotope Iris 2
- U-he Diva
- TH2 / overloud
- Recabinet
- EzKeys
- EzKeys Vintage Upright
- Lexicon PCM Reverbs
- PSP Vintage Warmer
- Sausage Fattener
- TAL Chorus LX
- Arturia Jupiter-8
- Spectral Michael Norris
- iZotope Nectar

- xFer Serum
- xFer Cthulhu
- NI Kontakt
- Spitfire Felt Piano
- NI Massive

## Extras de ejemplos para mejorar los manuales:

### instalar desde package
- sudo installer -package ~/Dropbox/Música/plugins/Minitaur_Editor_3.0.4_OSX/Moog Minitaur Editor-3.0.4-OSX.pkg -target "/Volumes/Macintosh HD"

### instalar desde dmg
- hdiutil mount One_iOS_February_2015.dmg 
o - sudo cp -R "/Volumes/xxxxxxxx/Chicken of the VNC.app" /Applications
o - installer de package anterior, depende el sw.