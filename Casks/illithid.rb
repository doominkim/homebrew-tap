cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "a02c2ed94b187666ace46a72b16a6b19efde51e6efef3b1fcb915a2e2ddb2d17",
         intel: "44e8aadf48899ba668130b5034388e29e9c70730543abd5d48a037bc8811d64b"

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
