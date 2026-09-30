cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.26"
  sha256 arm:   "9c181d9b833b1a42b9b46caae68550bae00196a64e48c3c16a099c6c9fd480d0",
         intel: "b87f4e14859cb7e816384f6e4c2da1b925a90bc9ad5a47552ae98fa293634601"

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
