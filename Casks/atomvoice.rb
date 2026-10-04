cask "atomvoice" do
  version "0.11.6"
  sha256 "ab71b456b337d9aa184d675f7481ce74a243e5306f54e369b49459c8cb7fdfb5"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/0.11.6/AtomVoice-0.11.6-Debug-Universal.zip"
  name "AtomVoice"
  desc "macOS menu bar voice input tool - press Fn to record, release to inject text"
  homepage "https://github.com/BlackSquarre/AtomVoice"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "AtomVoice.app"

  zap trash: [
    "~/Library/Application Support/AtomVoice",
    "~/Library/Preferences/com.blacksquarre.AtomVoice.plist",
  ]
end
