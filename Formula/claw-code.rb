class ClawCode < Formula
  desc "Fast Rust-based Claude CLI (fork of ultraworkers/claw-code)"
  homepage "https://github.com/shirk33y/claw-code"
  version "2026.05.07"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shirk33y/claw-code/releases/download/2026.05.07/claw-macos-arm64"
      sha256 "ac05dcc31c6bdd807422ef0d2afcdc50a916f8424011beaadcbf3c13eab97ec2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shirk33y/claw-code/releases/download/2026.05.07/claw-linux-arm64"
      sha256 "7aa67afbb17d12d46d8b0bc9cec3fef45e70fd10dfdd26abdd06c1485f1ae694"
    else
      url "https://github.com/shirk33y/claw-code/releases/download/2026.05.07/claw-linux-x64"
      sha256 "8099cbe735bc9667adee73101cd1c3ec73f543871e8de3be3be4eff2654a1590"
    end
  end

  def install
    bin.install Dir["claw*"].first => "claw"
  end

  test do
    # Binary reports upstream Cargo.toml version (0.x.y), not our CalVer.
    assert_match "Version", shell_output("#{bin}/claw --version 2>&1")
  end
end
