cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.9"
  sha256 arm:   "55daaa95961f4053198e62d6ff7c7581aa91d764338214456f3db0f60ce1fdce",
         intel: "c8dfa6e1da3916e3f67394ed57ee65d88a83a78ea59d7a3fbb866aa933112cd6"

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
