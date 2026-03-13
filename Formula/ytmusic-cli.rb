class YtmusicCli < Formula
  desc "YouTube Music player for your terminal"
  homepage "https://github.com/mammadovziya/ytmusic-cli"
  url "https://github.com/mammadovziya/ytmusic-cli/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "7f92509aed3d28e0882975e6df2e61061db9acb9b784892c7a5d11c5660c5c4d"
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
