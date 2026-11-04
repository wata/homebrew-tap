cask "audioanchor" do
  version "1.0.3"
  sha256 "d1199b9a7f1ca1fe3039dd2d1706c433ec6755a315074a3b614847df88f4235f"

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
