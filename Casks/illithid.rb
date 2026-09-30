cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.23"
  sha256 arm:   "56116b1c9cf109ed5039effb1b49ccff369226dc3db2bdd57e85973208616fda",
         intel: "9d23d6176fd1df7a59215001870c36d285f5caa5b536d0d780b38ed7c2815413"

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
