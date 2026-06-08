cask "sunstatus" do
  version "0.2.1"
  sha256 "083a14a3ca9d5c7a32ab863521b50850e3c12183bbcec0282b3f7f2c2d8ea959"

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
