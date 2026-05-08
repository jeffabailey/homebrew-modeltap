
class Modeltap < Formula
  desc "TUI for managing local AI models across Ollama, HF, LM Studio, Atomic Chat"
  homepage "https://github.com/jeffabailey/modeltap"
  version "0.2.4"
  license "MIT OR Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/jeffabailey/modeltap/releases/download/v0.2.4/modeltap-0.2.4-aarch64-apple-darwin.tar.gz"
      sha256 "5ca76cfe8b7c1ce40d4cd796cd36ed0036d2ead031dcad28dc5ab506297638c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/jeffabailey/modeltap/releases/download/v0.2.4/modeltap-0.2.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36f029b6295c1fb7d4dd43af40f1e6c8284b2489225481a503f8ab21bc9df94a"
    end
    on_intel do
      url "https://github.com/jeffabailey/modeltap/releases/download/v0.2.4/modeltap-0.2.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a246c16c6ee13f0a2ea6be4088c885cdaa359e257e6298cb15d13ff59d79f156"
    end
  end

  def install
    bin.install "modeltap"
  end

  test do
    assert_match "modeltap #{version}", shell_output("#{bin}/modeltap --version")
  end
end
