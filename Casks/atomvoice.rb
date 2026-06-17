cask "atomvoice" do
  version "0.11.1"
  sha256 "7e82ddc206ac90f7100fea68bcfbb61e2ce630586d6522632456d983f5f1fcca"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/0.11.1/AtomVoice-0.11.1-Debug-Universal.zip"
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
