cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.17"
  sha256 arm:   "1c97de401d24b3b24f76178edcd8d9f5ea0bfa379e585d69b6b1343860cb15e7",
         intel: "6a5b123bd4ad886cd96aa2b26f0f989076046b80991dba713f242f5b2bb77b34"

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
