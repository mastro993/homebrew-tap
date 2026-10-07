cask "keyameleon" do
  version "0.6.2"
  sha256 "7634ba60597d727321f8940004fb0f4c4580c22aaa5b2dae26e627b34729f787"

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
