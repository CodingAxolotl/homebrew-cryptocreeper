class Cryptocreeper < Formula
  desc "Installs a legendary CryptoCreeper image"
  homepage "https://github.com/codingaxolotl/homebrew-cryptocreeper"
  url "https://raw.githubusercontent.com/codingaxolotl/homebrew-cryptocreeper/main/cryptocreeper.png"
  sha256 "efcf861efb9c791ae58265614af9ea7d9f140f00d9b2a6ef0b42b483c08271cf"
  version "1.0"

  def install
    pkgshare.install "cryptocreeper.png"
  end

  def caveats
    <<~EOS
      🧨 CryptoCreeper installed!

      Image location:
        #{pkgshare}/cryptocreeper.png

      Copy it wherever you want 😄
    EOS
  end
end
