class YtDlp < Formula
  desc "Feature-rich command-line audio/video downloader"
  homepage "https://github.com/yt-dlp/yt-dlp"
  url "https://github.com/yt-dlp/yt-dlp/archive/refs/tags/2026.03.17.tar.gz"
  sha256 "924483986441d8a1e669a0e4371d753a9256ce4bdc06032394ccb7b793342434"
  license "Unlicense"

  depends_on "python@3.12"

  def install
    system "python3", "-m", "pip", "install", "--no-deps", "--no-binary", ":all:",
           "--prefix=#{prefix}", "."
  end

  test do
    system "#{bin}/yt-dlp", "--version"
  end
end
