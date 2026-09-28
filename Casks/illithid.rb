cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.14"
  sha256 arm:   "9e19a0d6858c1e07e2e92a639e1e116eb671bb3341440444c66a3267bd524a20",
         intel: "908997249659a6366ab55c5e3643533581bc805b0d7b80734793fab3873278d6"

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
