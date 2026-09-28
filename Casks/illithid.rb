cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.12"
  sha256 arm:   "b47922939a56e7f1cc2f833920a178ec9ac2466c117793beadf379ba9b40f30f",
         intel: "e9f646c8dc04d6b3dec6dac6ecd0f3174a670bd6a46ea073464ad0449331ebf5"

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
