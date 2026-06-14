cask "atomvoice" do
  version "0.10.8"
  sha256 "50ed332bc082294399a3c2853eca78d864fc342e1282f35475a8782b8fb5939b"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/0.10.8/AtomVoice-0.10.8-Debug-Universal.zip"
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
