class EmceeCloud < Formula
  desc "Command-Line interface for Emcee.cloud"
  homepage "https://emceetool.io/"
  url "https://github.com/avito-tech/Emcee.cloud-CLI/releases/download/0.0.2/emcee-cloud_Darwin_all.tar.gz"
  version "0.0.2"
  sha256 "3402b747c2e8769b8838bec28ef0fc5c48f103b59e97da9aec68296e75060752"
  license "MIT"

  def install
    libexec.install "emcee-cloud"
    system "xattr", "-c", "#{libexec}/emcee-cloud"
    bin.write_exec_script "#{libexec}/emcee-cloud"
  end

  test do
    system "#{bin}/emcee-cloud", "--version"
  end
end
