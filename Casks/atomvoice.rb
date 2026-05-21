cask "atomvoice" do
  version "0.10.4-Beta-1"
  sha256 "d52b9a7b45863f3447cf4a1b9fe957c95df1b93ff8e5cd3f8dc196f92443b7a2"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.4-Beta-1/AtomVoice-0.10.4-Beta-1-Universal.zip"
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
