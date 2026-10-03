cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.3.1"
  sha256 arm:   "9d60ce9e03423b9928ab08e13b14dea1e963325c32149d6fd3291c86a73c10bd",
         intel: "2bca44b0ba979cad6b7caa9c7f1877d32f542ccc83fd18f84a3829719f5b88fb"

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
