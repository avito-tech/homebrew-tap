class Emcee < Formula
  desc "Emcee the tests runner"
  homepage "https://emceetool.io/"
  version "21.4.0"

  if OS.mac?
    depends_on :macos => :monterey

    url "https://github.com/avito-tech/Emcee/releases/download/21.4.0/homebrew-archive.zip"
    sha256 "d6f350d20ec4f756e38839bff83085eed57fd24f416f39de45d92411b5c37363"

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
