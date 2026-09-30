cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.22"
  sha256 arm:   "9397e89f81a69004310ec10f4d9d4e1ce10f1b080323808597a8246d84c255b9",
         intel: "2f909495258ab49ef9d7607b6b1251f0fee6938b950f54de47ed5c55beacde85"

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
