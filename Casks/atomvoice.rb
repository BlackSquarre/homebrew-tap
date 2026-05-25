cask "atomvoice" do
  version "0.10.4"
  sha256 "9369fcb2205a4bc4198889e38a5cd1b640f51452545caf95cd4e48002cb8c59f"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.4/AtomVoice-0.10.4-Debug-Universal.zip"
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
