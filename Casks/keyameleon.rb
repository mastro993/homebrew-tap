cask "keyameleon" do
  version "0.9.0"
  sha256 "29509bf09d3216d62c9a85400bf8e7946e076e415bfd7a9808eea746ed455776"

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
