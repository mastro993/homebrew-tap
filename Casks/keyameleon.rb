cask "keyameleon" do
  version "0.10.0"
  sha256 "8d6ae6a225a967ff6607b8a75e23ff3b4ba95d007029aed17180adc8ba99a623"

  url "https://github.com/mastro993/Keyameleon/releases/download/v#{version}/Keyameleon-#{version}.dmg"
  name "Keyameleon"
  desc "Switch the input source to match the physical keyboard you type on"
  homepage "https://github.com/mastro993/Keyameleon"

  livecheck do
    url "https://mastro993.github.io/keyameleon/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Keyameleon.app"

  zap trash: [
    "~/Library/Application Support/Keyameleon",
    "~/Library/Caches/dev.fedemas.keyameleon",
    "~/Library/HTTPStorages/dev.fedemas.keyameleon",
    "~/Library/Preferences/dev.fedemas.keyameleon.plist",
  ]
end
