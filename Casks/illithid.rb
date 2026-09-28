cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.10"
  sha256 arm:   "2fb1876f2bbb9df1f6ce2518589a24a1c8f333f76d23bb9908c616b07e3d9a08",
         intel: "a5a4d65b23ac48eef54172266a8a493c79938ca01bf9f26445fc1d49d689c914"

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
