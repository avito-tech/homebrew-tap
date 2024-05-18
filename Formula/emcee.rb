class Emcee < Formula
  desc "Emcee the tests runner"
  homepage "https://emceetool.io/"
  version "20.2.0"

  if OS.mac?
    depends_on :macos => :monterey

    url "https://github.com/avito-tech/Emcee/releases/download/20.2.0/emceeFree.artifact.zip"
    sha256 "7204b7a5ddd77804b1e4786a13e72c6b85a46acdec6de53fda8379cc0053fe18"

    def install
      libexec.install "emceeFree", "EmceeTestsInspector"
      system "xattr", "-c", "#{libexec}/emceeFree"
      system "xattr", "-c", "#{libexec}/EmceeTestsInspector"

      bin.write_exec_script "#{libexec}/emceeFree"
      mv "#{bin}/emceeFree", "#{bin}/emcee"
    end
  end

  test do
    system "#{bin}/emcee version"
  end
end
