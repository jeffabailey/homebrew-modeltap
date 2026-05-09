
class Modeltap < Formula
  desc "TUI for managing local AI models across Ollama, HF, LM Studio, Atomic Chat"
  homepage "https://github.com/jeffabailey/modeltap"
  version "0.2.5"
  license "MIT OR Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/jeffabailey/modeltap/releases/download/v0.2.5/modeltap-0.2.5-aarch64-apple-darwin.tar.gz"
      sha256 "7d6ff517e7dd7c9b0e178c4592c29764a9de5405ea155219ea0ae14919c9532b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/jeffabailey/modeltap/releases/download/v0.2.5/modeltap-0.2.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "603368516ec99a4ccfa321781d32906cfd7f6dcb48c10be8611e206e9897bd65"
    end
    on_intel do
      url "https://github.com/jeffabailey/modeltap/releases/download/v0.2.5/modeltap-0.2.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fdd4dc6c030ccebf8349d8e513839374815a405da1702fe68c5fd51f23ee8282"
    end
  end

  def install
    bin.install "modeltap"
  end

  test do
    assert_match "modeltap #{version}", shell_output("#{bin}/modeltap --version")
  end
end
