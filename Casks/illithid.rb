cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.29"
  sha256 arm:   "ba69b4ffc12409ca84876b17dffed62f665f1308f4d470613ee14b651110b936",
         intel: "ffe29993fba988fe45c44091426c12df273f8b082991b7eb3bd63e820ee9b7b8"

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
