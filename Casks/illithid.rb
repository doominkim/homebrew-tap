cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.4"
  sha256 arm:   "34727bfcae1d6234c64c6b3d811d421897cdf8b1ad0a411f8a0cbe819727eb63",
         intel: "3b29b3c5b6cd7a41f9f1f3048b5f52905034dd69f70e55c8fa4f0d46fb3e49fe"

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
