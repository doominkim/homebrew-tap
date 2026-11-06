cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.4.8"
  sha256 arm:   "87c8488f867bdbbcba0c6d2da860c16095ea8850082a76ce7f7da17a46122180",
         intel: "f900363212c6861285ea5cc9fbfaf7ef3682bfe10794cab72890e5e6d39e03cd"

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
