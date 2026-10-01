cask "atomvoice" do
  version "0.11.5"
  sha256 "37affd2f8925354bd34b560bd7686e494bb20bfa0a1e6b8b691fb8e1a7e5f1df"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/0.11.5/AtomVoice-0.11.5-Debug-Universal.zip"
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
