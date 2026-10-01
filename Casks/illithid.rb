cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.30"
  sha256 arm:   "0ffb364536f62022ea8492720492e5e3e536fb8e4408310b285ef6d783dae2c8",
         intel: "0d048f589b5dea9b852ec93470d1403420365123b1008b75417ce61b853e21ce"

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
