class ClawCode < Formula
  desc "Fast Rust-based Claude CLI (fork of ultraworkers/claw-code)"
  homepage "https://github.com/shirk33y/claw-code"
  version "0.0.0"
  license "MIT"

  # This formula is auto-updated by CI on each release.
  # Install via: brew install shirk33y/tap/claw-code

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shirk33y/claw-code/releases/download/0.0.0/claw-macos-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shirk33y/claw-code/releases/download/0.0.0/claw-linux-arm64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/shirk33y/claw-code/releases/download/0.0.0/claw-linux-x64"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install Dir["claw*"].first => "claw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/claw --version 2>&1", 0)
  end
end
