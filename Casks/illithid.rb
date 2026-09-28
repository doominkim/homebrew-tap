cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.13"
  sha256 arm:   "3d769bb9333cf12be58bf21e4a686ca1fe7ca3c7077ed3d0cd399adef3617dbd",
         intel: "668e9bf9630b8738bdf5844a94d582ce37e5ffb571a6464b4a73d32226563824"

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
