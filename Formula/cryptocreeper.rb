class Cryptocreeper < Formula
  desc "Installs a legendary CryptoCreeper image"
  homepage "https://github.com/codingaxolotl/homebrew-cryptocreeper"
  url "https://raw.githubusercontent.com/codingaxolotl/homebrew-cryptocreeper/main/cryptocreeper.png"
  sha256 "efcf861efb9c791ae58265614af9ea7d9f140f00d9b2a6ef0b42b483c08271cf"
  version "1.1" # bump this if you update formula

  def install
    require "fileutils"

    # Make sure Downloads folder exists
    downloads = File.join(Dir.home, "Downloads")
    FileUtils.mkdir_p(downloads)

    # Copy the downloaded image directly from build directory to Downloads
    FileUtils.cp("cryptocreeper.png", downloads)

    # Also install to Homebrew pkgshare (optional, safe)
    pkgshare.install "cryptocreeper.png"

    # Fun install message
    ohai "🧨 CryptoCreeper has landed in your Downloads!"
    ohai "You can also find it in Homebrew pkgshare: #{pkgshare}/cryptocreeper.png"
  end

  def caveats
    <<~EOS
      🎉 CryptoCreeper installed successfully!

      Image location in Downloads:
        ~/Downloads/cryptocreeper.png

      Homebrew-safe copy:
        #{pkgshare}/cryptocreeper.png
    EOS
  end
end
