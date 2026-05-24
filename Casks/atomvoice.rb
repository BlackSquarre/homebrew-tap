cask "atomvoice" do
  version "0.10.4-Beta-4"
  sha256 "19e02d82f374b206c67c6c2e4146df74d5fc3549012b8fbf42cc3149d17caafb"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.4-Beta-4/AtomVoice-0.10.4-Beta-4-Debug-Universal.zip"
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
