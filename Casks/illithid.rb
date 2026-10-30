cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.4.7"
  sha256 arm:   "4528b3f6a4ee64056405228dc955ac9a4571e88f7578556c2572511e17faeb26",
         intel: "173b4fa9a1c8c9ae4a4cd664bd007ff5375d3d68ad4f3eb50f5a3eff7effd29c"

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
