cask "synapse-kayser" do
  version "7.2.0"

  on_intel do
    url "https://github.com/BlipkGoDev/synapse-kayser-releases/releases/download/v#{version}/Synapse.Kayser-x64.dmg"
    sha256 "d454286d0edc46c6407a76034336ee256b86edf5d5e269edd78a319d2aebd444"
  end

  on_arm do
    url "https://github.com/BlipkGoDev/synapse-kayser-releases/releases/download/v#{version}/Synapse.Kayser-arm64.dmg"
    sha256 "9353b8454ec94ae5632e4324f1090cb0d51d5deaf68a66e6294f1364cffc6cc7"
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
