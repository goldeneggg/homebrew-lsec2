require "formula"

class Lsec2 < Formula
  homepage 'https://github.com/goldeneggg/lsec2'
  version '0.2.3'

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.3/lsec2_linux_386.zip'
      sha256 'b129fcc498b63a2f7f5d540ed46395b10deb11c33bbdf5ad0f8ed2d859ccee2a'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.3/lsec2_darwin_386.zip'
      sha256 'e8a48145e621452e5c70f90dab349d382902733a75022acc1e1a829dc6ec4705'
    end
  else
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.3/lsec2_linux_amd64.zip'
      sha256 'a74501c201e11ac63933252d33912303f460b6b48017fa8eb6e361710da62dfe'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.3/lsec2_darwin_amd64.zip'
      sha256 '6a6e0e84a495eab01ed216a40d947cbb9ccec1b9cdf6bed5640dc8efd9b18dad'
    end
  end

  def install
    bin.install 'lsec2'
  end
end
