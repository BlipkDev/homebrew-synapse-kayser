cask "synapse-kayser" do
  version "7.0.0"

  on_intel do
    url "https://github.com/BlipkGoDev/synapse-kayser-releases/releases/download/v#{version}/Synapse.Kayser-x64.dmg"
    sha256 "1c026438bd525622f710f6ee624dc195bf87d4d11f491026b8087b7ddff05793"
  end

  on_arm do
    url "https://github.com/BlipkGoDev/synapse-kayser-releases/releases/download/v#{version}/Synapse.Kayser-arm64.dmg"
    sha256 "2f99e7d3cbd175900693573f3f95734b98f26cb394179cce5ab201caa821c077"
  end

  name "Synapse Kayser"
  desc "HTTP Client · WebSocket · Load Testing · Flows · Database Manager · AI"
  homepage "https://github.com/BlipkGoDev/synapse-kayser-releases"

  app "Synapse Kayser.app"

  zap trash: [
    "~/Library/Application Support/synapse-kayser",
    "~/Library/Preferences/com.blipk.synapsekayser.plist",
    "~/Library/Logs/synapse-kayser",
    "~/Library/Caches/com.blipk.synapsekayser",
  ]
end
