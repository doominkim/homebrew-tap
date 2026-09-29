cask "illithid" do
  arch arm: "arm64", intel: "x64"

  version "0.2.18"
  sha256 arm:   "6fe3eefffb51edee2369adea762ad929d4d4611901fe5df17a672c141ef0e5ac",
         intel: "00968e895306c3b012d0a9a4ca8dd4049f879b577db253aafedf8c24f4fbedde"

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
