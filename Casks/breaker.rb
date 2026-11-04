cask "breaker" do
  version "1.1.2"
  sha256 "956d0073b4df70fa11707ab89018aab742c3730aa434348fde6312802960275c"

  url "https://github.com/wata/Breaker/releases/download/#{version}/Breaker-#{version}.zip"
  name "Breaker"
  desc "Notifies you when launchd jobs, cron jobs or SwiftBar plugins break"
  homepage "https://github.com/wata/Breaker"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Breaker.app"

  zap trash: [
    "~/Library/Application Support/Breaker",
    "~/Library/Caches/dev.wata.Breaker",
    "~/Library/HTTPStorages/dev.wata.Breaker",
    "~/Library/Preferences/dev.wata.Breaker.plist",
  ]
end
