cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "dc23d824fb2caae3178406a12ff27de712c9051e5ad1e15c28028d9deb31ce88",
         intel: "87548e0b2561068a25fc3d3fea2fa7c9f16c6f3c0f41b2df6163ffaf9ac05f32"

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
