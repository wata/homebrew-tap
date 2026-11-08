cask "breaker" do
  version "1.1.3"
  sha256 "ee609484b27b6b7e1ffdf427821277e87fed123b56b816c8b76cf21e00878fbd"

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
