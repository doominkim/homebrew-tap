cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.3.0"
  sha256 arm:   "12f9309d476c4237227396a78f8a6f6aea022f13b166063bd94981853dbd34ac",
         intel: "d0483903728b504b20441e25262ff338ddd6cd4fc3056f2f1c3b831a24d35335"

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
