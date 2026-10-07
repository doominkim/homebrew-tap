cask "beholder" do
  version "0.5.0"
  sha256 "a9a5d943df11691011b31a6483f51a7a3f8fb222a2d57dfc4bb635155dacd5ca"

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
