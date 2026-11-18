cask "breaker" do
  version "1.3.0"
  sha256 "56439e7674495e984bbd331b85ba6099030df9ddafdfe4efb5633d09bfdcebd6"

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
