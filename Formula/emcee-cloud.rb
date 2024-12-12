class EmceeCloud < Formula
  desc "Command-Line interface for Emcee.cloud"
  homepage "https://emceetool.io/"
  url "https://github.com/avito-tech/Emcee.cloud-CLI/releases/download/0.1.0/emcee-cloud_Darwin_all.tar.gz"
  version "0.1.0"
  sha256 "2c73eafb1d84ac38311691706fe5fc5a35efae2a3ea457fbd604a7d889c59bb7"
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
