cask "atomvoice" do
  version "0.11.4"
  sha256 "c1218953806827aacd84d373594352132ff29f9c7fc322957b2905bb4b336a7f"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/0.11.4/AtomVoice-0.11.4-Debug-Universal.zip"
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
