cask "timemachineejector" do
  version "1.1.0"
  sha256 "2d187a502bc5e204797192d88f30214997f7c0ec16a59706170232202db9825a"

  url "https://github.com/wata/TimeMachineEjector/releases/download/#{version}/TimeMachineEjector-#{version}.zip"
  name "TimeMachineEjector"
  desc "Ejects the Time Machine backup disk when a backup finishes"
  homepage "https://github.com/wata/TimeMachineEjector"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "TimeMachineEjector.app"

  zap trash: [
    "~/Library/Caches/dev.wata.TimeMachineEjector",
    "~/Library/HTTPStorages/dev.wata.TimeMachineEjector",
    "~/Library/Preferences/dev.wata.TimeMachineEjector.plist",
  ]
end
