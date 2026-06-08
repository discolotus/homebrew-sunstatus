cask "sunstatus" do
  version "0.1.1"
  sha256 "cc6553cd8e44f2395b6c4b2327610112243d1551e0bc9190dd3f7e465bd7ee84"

  url "https://github.com/discolotus/SunStatus/releases/download/v#{version}/SunStatus.zip"
  name "SunStatus"
  desc "Menu bar app for daylight status at a glance"
  homepage "https://github.com/discolotus/SunStatus"

  depends_on macos: :ventura

  app "SunStatus.app"

  zap trash: [
    "~/Library/Application Support/SunStatus",
    "~/Library/Caches/com.discolotus.SunStatus",
    "~/Library/Preferences/com.discolotus.SunStatus.plist",
  ]
end
