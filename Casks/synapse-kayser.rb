cask "synapse-kayser" do
  version "7.2.1"

  on_intel do
    url "https://github.com/BlipkDev/synapse-kayser-releases/releases/download/v#{version}/Synapse.Kayser-x64.dmg"
    sha256 "fb35ae76582bbb53e54f256bfa1c3ac022f0b40b08a49fe096ae8d3ab1069fdd"
  end

  on_arm do
    url "https://github.com/BlipkDev/synapse-kayser-releases/releases/download/v#{version}/Synapse.Kayser-arm64.dmg"
    sha256 "7f5af37a6f9253ebb6f1d83c6ab06038554a280b4db148140114df91e5fef749"
  end

  name "Synapse Kayser"
  desc "HTTP Client · WebSocket · Load Testing · Flows · Database Manager · AI"
  homepage "https://github.com/BlipkDev/synapse-kayser-releases"

  app "Synapse Kayser.app"

  zap trash: [
    "~/Library/Application Support/synapse-kayser",
    "~/Library/Preferences/com.blipk.synapsekayser.plist",
    "~/Library/Logs/synapse-kayser",
    "~/Library/Caches/com.blipk.synapsekayser",
  ]
end
