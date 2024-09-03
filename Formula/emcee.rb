class Emcee < Formula
  desc "Emcee the tests runner"
  homepage "https://emceetool.io/"
  version "21.2.0"

  if OS.mac?
    depends_on :macos => :monterey

    url "https://github.com/avito-tech/Emcee/releases/download/21.2.0/homebrew-archive.zip"
    sha256 "5c70d22eb7d90da6e3316716cdb1a13bf92ddd168be942703e892e0a65ffec14"

    def install
      libexec.install "emcee", "emcee-ios", "EmceeTestsInspector", "emcee.jar"
      system "xattr", "-c", "#{libexec}/emcee"
      system "xattr", "-c", "#{libexec}/emcee-ios"
      system "xattr", "-c", "#{libexec}/EmceeTestsInspector"

      bin.write_exec_script "#{libexec}/emcee"
    end
  end

  test do
    system "#{bin}/emcee --version"
  end
end
