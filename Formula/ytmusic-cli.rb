class YtmusicCli < Formula
  desc "YouTube Music player for your terminal"
  homepage "https://github.com/mammadovziya/ytmusic-cli"
  url "https://github.com/mammadovziya/ytmusic-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "636b6b9b7934ac18b6556d8528df72cb23f79b795b068b12277b65a4d02d0565"
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
