cask "audioanchor" do
  version "1.0.2"
  sha256 "d5bc3f4374a14f376b6393378b36be84184aea78079fa453dc2874bbbe421791"

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
