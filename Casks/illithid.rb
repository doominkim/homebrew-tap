cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "524f7ab01990c7d57a9bd25d386792e3bea6d07796cca44ed61d17a6ced3f7f0",
         intel: "53db27b3d968b8b82206d7b4c17e7ba99808deab7465e1c2495fd2bf32493568"

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
