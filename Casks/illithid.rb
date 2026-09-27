cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.3"
  sha256 arm:   "721d7a72520a7dd63f046448f1583ab6d7aff193658dd81ffdf3be3229dcfeec",
         intel: "21b097b2440e140798c33b27bb2eb0df3bfb4cca67cbd963acc89305ad1f5485"

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
