cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.15"
  sha256 arm:   "7bfef4c64b73c83b8b5fec9325d89257aa6dde5601c32fc34d6b023843ad2876",
         intel: "02bbcc1d1707ec5d6eee5e9853faabaf857ff007438de9eaee8a1a0dd1cb9990"

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
