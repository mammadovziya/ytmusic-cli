class YtmusicCli < Formula
  desc "YouTube Music player for your terminal"
  homepage "https://github.com/mammadovziya/yt-music-cli"
  url "https://github.com/mammadovziya/yt-music-cli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256" # Run `openssl dgst -sha256 v0.3.0.tar.gz` after tag release
  license "MIT"

  depends_on "mpv"
  depends_on "yt-dlp"

  def install
    bin.install "bin/ytmusic-cli"
    # Note: For brew installation, we should ideally point to the compiled bin 
    # or ensure the node environment is handled if using the wrapper.
    # Since we are using bun compile, we would typically ship the resulting binary.
  end

  test do
    system "#{bin}/ytmusic-cli", "--version"
  end
end
