cask "clamshellctl-app" do
  version "0.4.0"
  sha256 "9097da3eb99b4c086edabebacdea4a995eba128f07cdadcb06172fbe27b4cc47"

  url "https://github.com/dotcom07/clamshellctl/releases/download/v#{version}/ClamshellCtl-#{version}.zip"
  name "ClamshellCtl"
  desc "Menu bar app for MacBook clamshell brightness, mute, and sleep behavior"
  homepage "https://github.com/dotcom07/clamshellctl"

  depends_on macos: :ventura

  app "ClamshellCtl.app"

  zap trash: [
    "~/Library/Application Support/clamshellctl",
    "~/Library/Preferences/com.dotcom07.clamshellctl.plist",
  ]
end
