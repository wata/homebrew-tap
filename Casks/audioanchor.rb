cask "audioanchor" do
  version "1.1.0"
  sha256 "fd9845e0549527f5330e518fa0ea6db06f09eb45513be163e290e41081843b19"

  url "https://github.com/wata/AudioAnchor/releases/download/#{version}/AudioAnchor-#{version}.zip"
  name "AudioAnchor"
  desc "Keeps sound output on the device you choose, like AirPods"
  homepage "https://github.com/wata/AudioAnchor"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "AudioAnchor.app"

  zap trash: [
    "~/Library/Caches/dev.wata.AudioAnchor",
    "~/Library/HTTPStorages/dev.wata.AudioAnchor",
    "~/Library/Preferences/dev.wata.AudioAnchor.plist",
  ]
end
