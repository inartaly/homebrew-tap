cask "tempbar" do
  version "1.0"
  sha256 "628ab480d2a5f7a52100b339dc4c3fe8675d190932f92fef56d59defe3b066f8"

  url "https://github.com/inartaly/TempBar/releases/download/v#{version}/TempBar-#{version}.zip"
  name "TempBar"
  desc "CPU and GPU temperature monitor for the menu bar"
  homepage "https://github.com/inartaly/TempBar"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "TempBar.app"

  uninstall quit: "com.inar.tempbar"

  zap trash: [
    "~/Library/LaunchAgents/com.inar.tempbar.plist",
    "~/Library/Preferences/com.inar.tempbar.plist",
  ]

  caveats <<~EOS
    TempBar is ad-hoc signed and not notarized. If macOS blocks the first
    launch, allow it under System Settings → Privacy & Security, or run:
      xattr -dr com.apple.quarantine /Applications/TempBar.app

    If you enabled Start at Login, remove its LaunchAgent with:
      brew uninstall --cask --zap tempbar
  EOS
end
