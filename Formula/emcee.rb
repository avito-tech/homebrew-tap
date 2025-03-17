class Emcee < Formula
  desc "Emcee the tests runner"
  homepage "https://emceetool.io/"
  version "21.9.0"

  if OS.mac?
    depends_on :macos => :monterey

    url "https://github.com/avito-tech/Emcee/releases/download/21.9.0/homebrew-archive.zip"
    sha256 "54bd92e2885c13203b717c1463fee77448a221cfe109d21455ef8165c62c78c7"

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
