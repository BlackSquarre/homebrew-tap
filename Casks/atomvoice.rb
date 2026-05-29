cask "atomvoice" do
  version "0.10.6-Beta-1"
  sha256 "8edb9e3f482005251f62e9dcab6933ccc1d17a8428aa2f487d7d6015231b51d6"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.6-Beta-1/AtomVoice-0.10.6-Beta-1-Debug-Universal.zip"
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
