cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.3.5"
  sha256 arm:   "44356a5e3ee3b0468302287ccca4cdd29902e942e7f698826a1f30efe362058d",
         intel: "299d5ddca58f489d0bbc46737cb9c53b4cf6055a8b3c990555ede31de137a547"

  url "https://github.com/doominkim/illithid/releases/download/v#{version}/illithid-#{arch}.dmg"
  name "Illithid"
  desc "One library of rules, skills, subagents and MCP servers for AI coding agents"
  homepage "https://github.com/doominkim/illithid"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Illithid.app"

  # Quit the running app (it stays in the menu bar) before an upgrade replaces it
  uninstall quit: "com.illithid.app"

  zap trash: [
    "~/.config/illithid",
    "~/Library/Application Support/Illithid",
    "~/Library/Preferences/com.illithid.app.plist",
    "~/Library/Saved Application State/com.illithid.app.savedState",
  ]
end
