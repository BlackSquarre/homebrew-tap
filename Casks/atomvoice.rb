cask "atomvoice" do
  version "0.10.7-Beta-1"
  sha256 "a258511205e13979e35d92c82369df8e716162dc5ec63ddf352e4165a90192e9"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.7-Beta-1/AtomVoice-0.10.7-Beta-1-Debug-Universal.zip"
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
