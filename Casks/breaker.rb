cask "breaker" do
  version "1.3.2"
  sha256 "3ded8f4a9accc8f020452d9f3868e8076997f01834eda9cabcdbd969aadee971"

  url "https://github.com/wata/Breaker/releases/download/#{version}/Breaker-#{version}.zip"
  name "Breaker"
  desc "Notifies you when launchd jobs, cron jobs, Folder Actions, network or storage break"
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
