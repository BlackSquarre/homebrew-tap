cask "atomvoice" do
  version "0.10.3"
  sha256 "594d932e098dda6e30459e01474cd49be6272c2387f0f4a08aaad4540fd11cca"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.3/AtomVoice-0.10.3-Universal.zip"
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
