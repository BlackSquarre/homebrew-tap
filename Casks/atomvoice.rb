cask "atomvoice" do
  version "0.10.5"
  sha256 "85cd3b20af0c7ee611b66f86b8747a8459523c48b97d713cea2f136709bfed86"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.5/AtomVoice-0.10.5-Debug-Universal.zip"
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
