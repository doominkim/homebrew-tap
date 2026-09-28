cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.6"
  sha256 arm:   "768d9a3333abd173b11ca9fb98bf7e112623d81fdbbb052c618577fd60713a44",
         intel: "18b536273fcb27c812073831f3ba4310eb77827a3aa651eb1f94416849070b76"

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
