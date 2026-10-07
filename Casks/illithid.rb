cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.3.6"
  sha256 arm:   "f252b16f4d4e94af1f8aebd2f1e70935a2996d2840f33b42d8028133119a51a3",
         intel: "f9e9f224b5b1113ff47b466791317662b358d2ecefc340be0f4ce02deb1bfb77"

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
