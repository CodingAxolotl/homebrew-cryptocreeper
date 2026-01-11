class Cryptocreeper < Formula
  desc "Installs a legendary CryptoCreeper image"
  homepage "https://github.com/codingaxolotl/homebrew-cryptocreeper"
  url "https://raw.githubusercontent.com/codingaxolotl/homebrew-cryptocreeper/main/cryptocreeper.png"
  sha256 "efcf861efb9c791ae58265614af9ea7d9f140f00d9b2a6ef0b42b483c08271cf"
  version "2.0"

  def install
    # Store in pkgshare first (safe)
    pkgshare.install "cryptocreeper.png"
    
    # Also copy to user's Downloads folder
    downloads = File.join(Dir.home, "Downloads")
    FileUtils.mkdir_p(downloads) # create Downloads folder if it somehow doesn't exist
    FileUtils.cp("#{pkgshare}/cryptocreeper.png", downloads)
  end

  def caveats
    <<~EOS
      🧨 CryptoCreeper installed!

      Image location in Downloads:
        ~/Downloads/cryptocreeper.png

      Or in Homebrew pkgshare:
        #{pkgshare}/cryptocreeper.png

      Enjoy 😄
    EOS
  end
end
