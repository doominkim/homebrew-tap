cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "6d1fe7fd09729477f8dc6629a298d7eff2b1ecdb405d01b5254db69e8c6e1f22",
         intel: "df0d68cfd6f3acc3c22428a29ab3a8a27da64a49803d430af89cf5fc784b29c5"

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
