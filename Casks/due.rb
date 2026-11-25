# Homebrew cask for DUE. Install: brew tap joe-433/due && brew trust joe-433/due && brew install --cask due
# The release script in the (private) source repository rewrites version and sha256 on every release.
cask "due" do
  version "1.4.0"
  sha256 "da1eeda254906c8112f9321d2c3174127918d2af0683d945752f512c766d9eab"

  url "https://github.com/Joe-433/homebrew-due/releases/download/v#{version}/DUE-#{version}.dmg"
  name "DUE"
  desc "Sends what a customer just asked on a call to Apollo with one press"
  homepage "https://github.com/Joe-433/homebrew-due"

  # DUE updates itself from GitHub Releases (a pop-up offers each new version).
  auto_updates true
  depends_on macos: :tahoe

  app "DUE.app"

  uninstall quit: "io.github.joe-433.due"

  zap trash: [
    "~/Library/Preferences/io.github.joe-433.due.plist",
    "~/Library/Caches/DUE",
    "~/Library/Logs/DUE.log",
  ]

  caveats <<~EOS
    Open DUE from Applications. Its setup window walks you through the Apollo API key and the
    microphone and system-audio permissions. If macOS says DUE can't be opened, go to
    System Settings > Privacy & Security and click "Open Anyway" (once).
  EOS
end
