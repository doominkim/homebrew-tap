cask "beholder" do
  version "0.3.1"
  sha256 "7fc236cc9fddc0e2908f5cfe2f96af14dc2931b679a2cf526d975be9f6f97093"

  url "https://github.com/doominkim/beholder-releases/releases/download/v#{version}/beholder-arm64.dmg"
  name "Beholder"
  desc "Timelines, chat reactions, live analysis and collab sync for CHZZK stream editors"
  homepage "https://github.com/doominkim/beholder-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Local transcription runs on MLX, so Apple Silicon only
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Beholder.app"

  # Quit the running app (it hosts the analysis server) before an upgrade replaces it
  uninstall quit: "com.beholder.app"

  zap trash: [
    "~/Library/Application Support/Beholder",
    "~/Library/Logs/Beholder",
    "~/Library/Preferences/com.beholder.app.plist",
    "~/Library/Saved Application State/com.beholder.app.savedState",
  ]
end
