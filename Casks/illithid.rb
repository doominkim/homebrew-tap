cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.2"
  sha256 arm:   "06ff09a177ce39e433ee821f2c5998ab5df84a61998c5b2caa17e717ae4ea8cf",
         intel: "ab897b0fb14438105802d6253a23f88598d316f330e9ddd8965831c429bd84fc"

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
