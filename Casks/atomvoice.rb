cask "atomvoice" do
  version "0.10.1-Beta-3"
  sha256 "e039a5fb18450d6c9f760e1898b3929b959209fa5893f1f3c7a79f38cb2d58a4"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.1-Beta-3/AtomVoice-0.10.1.Beta.3-Universal.zip"
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
