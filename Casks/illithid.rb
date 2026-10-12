cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.4.4"
  sha256 arm:   "ca325d93d3851f5905743f70129749d891bd3a2bd9d4b2f6234d17d24ba8b9fb",
         intel: "93eb63d5b208bc363f26b84b555cff630f4ffcdee3766e922af7276dfa346758"

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
