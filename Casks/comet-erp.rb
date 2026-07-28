cask "comet-erp" do
  version "1.0.0"
  sha256 "9c2ee5033672837886186c007d6928917476e466703e9a0a6e44fb12017d3cf7"

  url "https://github.com/cometdigitalagency/dist/releases/download/comet-erp-v#{version}/Comet.ERP_#{version}_universal.dmg",
      verified: "github.com/cometdigitalagency/dist/"
  name "Comet ERP"
  desc "Desktop app for Comet's internal ERP/workspace tools"
  homepage "https://workspace.comet.la/"

  livecheck do
    url "https://github.com/cometdigitalagency/dist/releases.atom"
    regex(/comet-erp[._-]v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :catalina

  app "Comet ERP.app"

  zap trash: [
    "~/Library/Application Support/la.comet.workspace",
    "~/Library/Caches/la.comet.workspace",
    "~/Library/Preferences/la.comet.workspace.plist",
    "~/Library/Saved Application State/la.comet.workspace.savedState",
    "~/Library/WebKit/la.comet.workspace",
  ]
end
