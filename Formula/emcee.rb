class Emcee < Formula
  desc "Emcee the tests runner"
  homepage "https://emceetool.io/"
  version "21.11.0"

  if OS.mac?
    depends_on :macos => :monterey

    url "https://github.com/avito-tech/Emcee/releases/download/21.11.0/homebrew-archive.zip"
    sha256 "ab99718c64422321101e81650bcd3188ee49cc2d04591a0bd0e00e5376b533f4"

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
