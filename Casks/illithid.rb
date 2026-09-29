cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.19"
  sha256 arm:   "9fee203b5fd4d91899467ab3fbd2d6111a132f066a161e1cfa4a05bfba9d2070",
         intel: "4108b15e19750c018211b8fc92cbab1a63165c473220db2788b47144512ca3f6"

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
