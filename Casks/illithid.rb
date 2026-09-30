cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.28"
  sha256 arm:   "c2d5940c04d2b330ef27d803724de8ea3723dedd9237dd1785355234c66840f3",
         intel: "514c777cde9be1ef1f2a74e1173a2f1c5fc33237b07c6e03615aaa40907a757b"

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
