class YtmusicCli < Formula
  desc "YouTube Music player for your terminal"
  homepage "https://github.com/mammadovziya/ytmusic-cli"
  url "https://github.com/mammadovziya/ytmusic-cli/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "c38135fe2faef627d401153bfc071ed738421d4646f0b872e83a8ad6c4bf5359"
  license "MIT"

  depends_on "bun" => :build
  depends_on "mpv"
  depends_on "yt-dlp"

  def install
    system "bun", "install", "--no-save"
    system "bun", "build", "--compile", "src/index.ts", "--outfile", "ytmusic-cli"
    bin.install "ytmusic-cli"
  end

  test do
    system "#{bin}/ytmusic-cli", "--version"
  end
end
