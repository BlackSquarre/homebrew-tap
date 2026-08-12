cask "atomvoice" do
  version "0.11.3"
  sha256 "8d0b596551710257d9fa6f5ffed8d14b2640f2a4dd0d0e90b2218f0bc53a4c0d"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/0.11.3/AtomVoice-0.11.3-Debug-Universal.zip"
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
