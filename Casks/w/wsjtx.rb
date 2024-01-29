cask "wsjtx" do
  version "2.6.1"
  sha256 "faad6f35a550cf56095eae5ff2f9d124c63187bc6ecff324170c2ae06c609e3e"

  name "WSJT-X"
  desc "Weak signal ham radio communication package"
  homepage "https://www.physics.princeton.edu/pulsar/K1JT/wsjtx.html"
  url "https://downloads.sourceforge.net/wsjt/wsjtx-#{version}-Darwin.dmg"

  app "wsjtx.app"

  livecheck do
    url :stable
    strategy :sourceforge
  end

  zap trash: [
    "~/Library/Application Support/WSJT-X",
    "~/Library/Preferences/org.physics.princeton.WSJT-X.plist",
    "~/Library/Saved Application State/org.physics.princeton.WSJT-X.savedState",
  ]
end


