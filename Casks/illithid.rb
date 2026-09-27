cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "ab265ecd9df2e90bfc6ab0a310600383d7f5088a10cd3bd949b1d2610827fe27",
         intel: "2297d34da95cea6dfe085722763f20def40d72d2315df516aeb47d37d035fd44"

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
