cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.5"
  sha256 arm:   "6b097287bc2d3d68aa8976e252b79ae40fc78423043692e2bf41ee5b06fcaf17",
         intel: "bf2f65e9a90561fae453364dadb199dd600f5524cd6d5b9e8e9818da1203005c"

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
