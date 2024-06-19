class EmceeCloud < Formula
  desc "Command-Line interface for Emcee.cloud"
  homepage "https://emceetool.io/"
  url "https://github.com/avito-tech/Emcee.cloud-CLI/releases/download/0.0.1/emcee-cloud_Darwin_all.tar.gz"
  sha256 "1025b2d76923797cbe2d9d08218d39aae94fa69fd05aaaf434d382ebca48545b"
  license "MIT"
  version "0.0.1"


  def install
    libexec.install "emcee-cloud"
    system "xattr", "-c", "#{libexec}/emcee-cloud"
    bin.write_exec_script "#{libexec}/emcee-cloud"
  end

 test do
    system "#{bin}/emcee-cloud --version"
 end
end

