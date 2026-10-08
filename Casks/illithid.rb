cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "eb5808ad12e20c1c08f301a59a05b50d4e4925ce67ca4703bde8b9ce8a78f8f5",
         intel: "a083e0848f56e7ce297f5917e2691a2b8255447113472e4759cceaf225a599fa"

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
