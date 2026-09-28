cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.11"
  sha256 arm:   "691d26d13ef2c5962579461db46c53565b05729a19151a6a4d4ec92e6191278c",
         intel: "87c6469a658c2690de5cd867ffccd041c12357b0f80e1bd8ca49e90c61e5f838"

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
