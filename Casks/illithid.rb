cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.4.1"
  sha256 arm:   "184112d2d409e5e9b9e87f20092330ddffd72fb5c981bb57fccb5b9ef74df9a6",
         intel: "bba8edaf0b0e63c5cc07d87d2fb47de62f62bb6d3a8424a07475ea6e5c3cc436"

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
