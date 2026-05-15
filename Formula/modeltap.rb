
class Modeltap < Formula
  desc "TUI for managing local AI models across Ollama, HF, LM Studio, Atomic Chat"
  homepage "https://github.com/jeffabailey/modeltap"
  version "0.2.6"
  license "MIT OR Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/jeffabailey/modeltap/releases/download/v0.2.6/modeltap-0.2.6-aarch64-apple-darwin.tar.gz"
      sha256 "843c7db7a7f905096129bb1a87d827c194a01c8085f79109dcd905b02cb23e37"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/jeffabailey/modeltap/releases/download/v0.2.6/modeltap-0.2.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c192ba2e95094a3472372e3c369e93eb048524de8eb7aab12d1e031491c42170"
    end
    on_intel do
      url "https://github.com/jeffabailey/modeltap/releases/download/v0.2.6/modeltap-0.2.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f0196edf51f14811a2f8c8e1aed635c0f90cdb015ce4a956a94a68a75f2650ef"
    end
  end

  def install
    bin.install "modeltap"
  end

  test do
    assert_match "modeltap #{version}", shell_output("#{bin}/modeltap --version")
  end
end
