cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "9aecff23cfbbe535b1498eb43e0a9ad897811f1e4c34606b53e2a2ed7a676a01",
         intel: "48aa53ea958f3c2e1dd79dcd58f50fc2fd6b24a1b7b81bf52f9ed7cd8cc85413"

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
