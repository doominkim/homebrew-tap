cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.24"
  sha256 arm:   "629ee9a98290da8359a886e96fcb505b72674c97e7a778b3897eb753e69d7d0c",
         intel: "ea70ed5e05141de97107166ffbdef53bb681ebf03309232630b71d1b4caff2ce"

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
