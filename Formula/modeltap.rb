class Modeltap < Formula
  desc "TUI for managing local AI models across Ollama, HF, LM Studio, Atomic Chat"
  homepage "https://github.com/jeffabailey/modeltap"
  version "0.2.3"
  license "MIT OR Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/jeffabailey/modeltap/releases/download/v0.2.3/modeltap-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "139eaa62c93cf01fa4f38033d13d3ec57c7928917214b192253ab880abce31c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/jeffabailey/modeltap/releases/download/v0.2.3/modeltap-0.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4539d283d1aba20937a41f05af00b1182f57a3798cd18b9124dbeefb1070b4a9"
    end
    on_intel do
      url "https://github.com/jeffabailey/modeltap/releases/download/v0.2.3/modeltap-0.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d991f401f3c4f5f179455cd1f37dfd54cbbe81081f521edbf5f32821291bc56c"
    end
  end

  def install
    bin.install "modeltap"
  end

  test do
    assert_match "modeltap #{version}", shell_output("#{bin}/modeltap --version")
  end
end
