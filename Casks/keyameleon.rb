cask "keyameleon" do
  version "0.8.0"
  sha256 "ff61a077d6b1389b0900eed97372e1ddac945247ab07c011604df3b4b74d1f5f"

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
