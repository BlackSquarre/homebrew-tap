cask "atomvoice" do
  version "0.10.1-Beta-4"
  sha256 "619fc28c9402cdf34a3a913a34ba816e1f9ee7d744c277bf4afba41369597da0"

  url "https://github.com/BlackSquarre/AtomVoice/releases/download/v0.10.1-Beta-4/AtomVoice-0.10.1.Beta.4-Universal.zip"
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
