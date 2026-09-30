cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.27"
  sha256 arm:   "42b0137b9f224415c5832c43c3f94d91fbe58a22b4f377a7546741f92f3e7484",
         intel: "43d40f3525c94399e8e0b91272836f6697e5759e70b6e0db0185b2b91441d06d"

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

  # Quit the running app (it stays in the menu bar) before an upgrade replaces it
  uninstall quit: "com.illithid.app"

  zap trash: [
    "~/.config/illithid",
    "~/Library/Application Support/Illithid",
    "~/Library/Preferences/com.illithid.app.plist",
    "~/Library/Saved Application State/com.illithid.app.savedState",
  ]
end
