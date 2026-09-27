cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.1.0"
  sha256 arm:   "e7fc3d2e62272210f198ff2fc54d98b61b283536f25c89aaef324b7bce9ff581",
         intel: "ad656c0f64bc3c0d5de936103f20ee38976a1cf21db7d7705a1ae2fe0637dbee"

  url "https://github.com/doominkim/illithid/releases/download/v#{version}/illithid-#{arch}.dmg"
  name "Illithid"
  desc "Keep Claude Code, Codex and OpenCode on the same rules, skills and MCP servers"
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
