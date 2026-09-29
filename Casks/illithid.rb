cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.21"
  sha256 arm:   "5487cde527816f801a5b3225f6c2cdf596284e88bbdc6a5e9e2793b7df2a1a02",
         intel: "e46d57a44525b68cbbae551a8426cd837c2a9d58bba7ae62d5b4fecd1a283afb"

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
