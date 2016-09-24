require "formula"

class Lsec2 < Formula
  homepage 'https://github.com/goldeneggg/lsec2'
  version '0.0.3'

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.0.3/lsec2_linux_386.zip'
      sha256 '077643ccdc0a366c20e13e1d875da20012c7fd550ac5f3f8664786ac96c5fc6d'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.0.3/lsec2_darwin_386.zip'
      sha256 '2aed6d9602a382f7d6ec6c55b9bab3340265426eba308a9803ce1d3efb62f86a'
    end
  else
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.0.3/lsec2_linux_amd64.zip'
      sha256 'a0e35892dcd028094fe3543ee9d62c3d7b8e4c251839fbd66a6177f2afa50f1b'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.0.3/lsec2_darwin_amd64.zip'
      sha256 'd1f23c38451ac91b0024ebf4ca7bb4d94b29015c8f188c7b85f2415955cfa1ed'
    end
  end

  def install
    bin.install 'lsec2'
  end
end
