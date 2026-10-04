cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.3.3"
  sha256 arm:   "463d8980055a7f57d6f80f5978792cf60819fe4aaa33d8e945c63d5172fad3cf",
         intel: "c17947c3e5cd77bfdecf2088833a84424840887932b7ff3362d07bf53090bc01"

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
