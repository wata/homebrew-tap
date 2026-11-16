cask "breaker" do
  version "1.2.0"
  sha256 "c26dca9a5bcb489ff32bf41aa989bcd6552b2d8c507044f3bd683e4e5a2045e6"

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
