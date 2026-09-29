cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.20"
  sha256 arm:   "c1875547ca5debed4a4cbdbdf7758c6c66b2279699f23427f42f971844e2977f",
         intel: "602ac1d34af76c15387c2d94e8e2d60898ad82f0bea5ff8df5d5c451a987cba8"

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

  zap trash: [
    "~/.config/illithid",
    "~/Library/Application Support/Illithid",
    "~/Library/Preferences/com.illithid.app.plist",
    "~/Library/Saved Application State/com.illithid.app.savedState",
  ]
end
