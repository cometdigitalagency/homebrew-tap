class Cometai < Formula
  desc "Monitor Claude AI token usage — burn rate, cost, and remaining quota"
  homepage "https://github.com/cometdigitalagency/comet-ai-tracking-node"
  url "https://registry.npmjs.org/@comet_digital_agency/cometai/-/cometai-1.0.6.tgz"
  sha256 "c0a93f696841dd47992b90adfc8f12c4ef0e3c7156f9a64a2430ceca6d377f78"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  def caveats
    <<~EOS
      Get started:
        cometai --login              Login to CSSO (Keycloak)
        cometai --install-service    Auto-start exporter on login
        cometai --list               List saved Claude profiles
        cometai --view realtime      Live token usage view
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cometai --version")
  end
end
