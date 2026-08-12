cask "synapse-kayser" do
  version "7.1.0"

  on_intel do
    url "https://github.com/BlipkGoDev/synapse-kayser-releases/releases/download/v#{version}/Synapse.Kayser-x64.dmg"
    sha256 "1a93500e0b49eac9a7bfa3dad2a4049a1277af8ab472d10b61b6057433b6b4e3"
  end

  on_arm do
    url "https://github.com/BlipkGoDev/synapse-kayser-releases/releases/download/v#{version}/Synapse.Kayser-arm64.dmg"
    sha256 "0f52c4743747b1691c1a27d2bf72d7f729ab303429c17d7dbee4f5f483911505"
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
