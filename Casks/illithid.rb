cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.16"
  sha256 arm:   "1d55ad16722bf1f03fcb266f420b1aca59d23736b6b6aff54e90d797d3b57f4c",
         intel: "4995266cf2c393b59d4a13ddd1b33beb41273df77090cc70c45f98602738e5d4"

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
