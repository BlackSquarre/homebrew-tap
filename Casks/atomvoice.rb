cask "atomvoice" do
  version "0.11.2"
  sha256 "37d65c60f494515d8e35c371f58ed8fc5c49b9e3bfabffbd2c8fabe102e502df"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/0.11.2/AtomVoice-0.11.2-Debug-Universal.zip"
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
