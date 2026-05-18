cask "atomvoice" do
  version "0.10.2"
  sha256 "997fba704958ca28c89afc212fdba87df1cca7950939fb2770b553b4c8dddd18"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.2/AtomVoice-0.10.2-Universal.zip"
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
