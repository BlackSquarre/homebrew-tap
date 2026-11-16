cask "atomvoice" do
  version "0.12.1"
  sha256 "6ab79df8f0c360ae8af32436e8d9fed52ccc91f30a9485800266360eb10a4468"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/0.12.1/AtomVoice-0.12.1-Universal.zip"
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
