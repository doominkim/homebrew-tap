cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.7"
  sha256 arm:   "2eebb83ae1a3fb28555cdcf635d48dbc69d02d9be3c51073cca826adc53b74d1",
         intel: "1b0b6f9153642c4dad870025c7cddb611ea8d82594449650eedcaedf5d6a1545"

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
