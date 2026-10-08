cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.4.2"
  sha256 arm:   "28ebb12530aeb86b4d83a4b60598b1c94ff42039615ba532dec70732fb3dc5cc",
         intel: "fcd2debf38ece7f19a008b39f4a217c37e709f37aeef248fa04fe37f26f96284"

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
