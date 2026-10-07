cask "keyameleon" do
  version "0.6.1"
  sha256 "6694963a810a8de05307a0697babc4f43b8f58158d7fce59ac772c19805f2412"

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
