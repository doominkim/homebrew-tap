cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.8"
  sha256 arm:   "a7777fb6e8a6a186d5731825fb68a39323ca920bffbbe30205b1d1d51355cd59",
         intel: "4302e583dfe2b96e51b1030aa9ad497b4aece46ae8dbf0ec76eabd32f251d0e3"

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
