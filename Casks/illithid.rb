cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.25"
  sha256 arm:   "f8f5a5802e5b452986b50f215852202fa8790f473cd7d649f1723cef298c5842",
         intel: "9f251f0ee672392ac4f5b4d4465e2e60023baf3aae40caa53a602aadc8084aad"

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
