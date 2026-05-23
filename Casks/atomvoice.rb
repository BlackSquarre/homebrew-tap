cask "atomvoice" do
  version "0.10.4-Beta-3"
  sha256 "38429d2f03003754b29b61750ae5aece4bf7986638ea757faeebe9deb93ab01e"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.4-Beta-3/AtomVoice-0.10.4-Beta-3-Debug-Universal.zip"
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
