class Emcee < Formula
  desc "Emcee the tests runner"
  homepage "https://emceetool.io/"
  version "21.7.1"

  if OS.mac?
    depends_on :macos => :monterey

    url "https://github.com/avito-tech/Emcee/releases/download/21.7.1/homebrew-archive.zip"
    sha256 "4b1af1dc7996184ae34ebe00b7e1349887bb73ab5b18a8b0cd47b33ace48b684"

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
