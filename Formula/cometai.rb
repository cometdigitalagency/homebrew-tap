class Cometai < Formula
  desc "Monitor Claude AI token usage — burn rate, cost, and remaining quota"
  homepage "https://github.com/cometdigitalagency/comet-ai-tracking-node"
  url "https://registry.npmjs.org/@comet_digital_agency/cometai/-/cometai-1.1.2.tgz"
  sha256 "4894f9d93112c841435ea40e16dd213833f46a231f2a86efd0a7eda290d1a750"
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
