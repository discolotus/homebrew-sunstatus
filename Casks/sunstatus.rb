cask "sunstatus" do
  version "0.2.4"
  sha256 "425749c4b2115d74cb0eecf49fa0a677554a44e241bf0b838a17bf2818c21b38"

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
