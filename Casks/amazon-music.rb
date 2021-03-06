class AmazonMusic < Cask
  version '3.4'
  sha256 '7b9a8285abd83c0ed6e01db93b620c3d4cce5ade152ecbf30347b91055d83849'

  url 'https://images-na.ssl-images-amazon.com/images/G/01/digital/music/morpho/installers/20140918/1929340d40/AmazonMusicInstaller.dmg'
  homepage 'https://www.amazon.com/gp/feature.html/ref=dm_mo_cpw_fb_lm?docId=1001067901'
  license :unknown

  caskroom_only true

  postflight do
    system '/usr/bin/sudo', '-E', '--',
      "#{destination_path}/Amazon Music Installer.app/Contents/MacOS/osx-intel"
  end
end
