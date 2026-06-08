cask "sunstatus" do
  version "0.2.0"
  sha256 "4d60082239d912e4ebd62baec8c08abc0a321ae64b7cf08b8e87508e6b15a41b"

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
