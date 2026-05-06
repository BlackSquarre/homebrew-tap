cask "atomvoice" do
  version "0.9.6"
  sha256 "9f14cb83f0f53cc204ff9f2393ff78b5815285cd3df79d85ba915076e143643a"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.9.6/AtomVoice-0.9.6-Universal.zip"
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
