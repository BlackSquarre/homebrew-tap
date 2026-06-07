cask "atomvoice" do
  version "0.10.7"
  sha256 "acc349730fe8d9a5fa21ce67f5987af1061b681a59248328e2f22ca8d930ce78"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/0.10.7/AtomVoice-0.10.7-Debug-Universal.zip"
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
