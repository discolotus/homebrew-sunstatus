cask "sunstatus" do
  version "0.2.3"
  sha256 "aa481efc08c8750159992157dd5dc556e6869898883739de71f9b6ec287b3e06"

  url "https://github.com/discolotus/SunStatus/releases/download/v#{version}/SunStatus.zip"
  name "SunStatus"
  desc "Menu bar app for daylight status at a glance"
  homepage "https://github.com/discolotus/SunStatus"

  depends_on macos: :sonoma

  app "SunStatus.app"

  zap trash: [
    "~/Library/Application Support/SunStatus",
    "~/Library/Caches/com.discolotus.SunStatus",
    "~/Library/Preferences/com.discolotus.SunStatus.plist",
  ]
end
