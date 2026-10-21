cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.4.6"
  sha256 arm:   "b251055d3b494fb50d3eac86336b002df58511fcd24378d3dd4e5326bb76e80a",
         intel: "7613bb787f30021034bbe980b353198233e71a53a7f05e4f9943c01c96b69db1"

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
