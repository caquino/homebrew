cask "js8call" do
  version "2.2.0"
  sha256 "34fe1b68757bd9ddd3905b443b6d23776b18c5a803944d49a2e3ebf3327c9b9b"

  name "JS8Call"
  desc "JS8 Digital Mode providing weak signal keyboard to keyboard messaging to Amateur Radio Operators"
  homepage "https://js8call.com/"
  url "http://files.js8call.com/2.2.0/js8call-#{version}-Darwin.dmg"

  app "js8call.app"

  livecheck do
    url "https://groups.io/g/js8call/wiki/Download-Links"
    strategy :page_match
    regex(%r{href=.*?/js8call-(\d+(?:\.\d+)*)-Darwin\.dmg}i)
  end

  zap trash: [
    "~/Library/Application Support/JS8Call",
    "~/Library/Preferences/com.ae5k.js8.plist",
    "~/Library/Saved Application State/com.ae5k.js8.savedState",
  ]
end
