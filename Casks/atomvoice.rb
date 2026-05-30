cask "atomvoice" do
  version "0.10.6"
  sha256 "66345c554c599ed2d1f9bcf14669bb99635017be7e27a8b0c4cdf68dc7d47527"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.6/AtomVoice-0.10.6-Debug-Universal.zip"
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
