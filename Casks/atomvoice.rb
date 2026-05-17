cask "atomvoice" do
  version "0.10.2-Beta-6"
  sha256 "85633e27e5a5a668efa15efd4fc99bf2655f8cbdae5d1f384477753cabb558b9"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.2-Beta-6/AtomVoice-0.10.2-Beta-6-Universal.zip"
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
