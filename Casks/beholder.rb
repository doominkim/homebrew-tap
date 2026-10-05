cask "beholder" do
  version "0.1.0"
  sha256 "3805ce8871822508b47a5982c46efe70efaeaf0e27dee6c5e0567e9a16d57514"

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
  depends_on macos: :monterey
  depends_on formula: "ffmpeg"

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
