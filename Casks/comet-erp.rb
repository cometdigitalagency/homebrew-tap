cask "comet-erp" do
  version "0.1.0"
  sha256 "3cce5f73d1a40432921297d09bdb7dd253fdd2a9d237c53701fce0555fb16770"

  url "https://github.com/cometdigitalagency/homebrew-tap/releases/download/comet-erp-v#{version}/Comet.ERP_#{version}_aarch64.dmg"
  name "Comet ERP"
  desc "Desktop app for Comet's internal ERP/workspace tools"
  homepage "https://comet.la/"

  livecheck do
    skip "No public update feed to check against"
  end

  depends_on arch: :arm64
  depends_on :macos

  app "Comet ERP.app"

  zap trash: [
    "~/Library/Application Support/la.comet.workspace",
    "~/Library/Caches/la.comet.workspace",
    "~/Library/Preferences/la.comet.workspace.plist",
    "~/Library/Saved Application State/la.comet.workspace.savedState",
  ]
end
