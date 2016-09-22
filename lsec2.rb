require "formula"

class Lsec2 < Formula
  if Hardware::CPU.is_32_bit?
    url 'https://drone.io/github.com/goldeneggg/lsec2/files/artifacts/bin/darwin_386/lsec2'
    sha256 '933ee34a1e1f85b008a577916453ee397e34fc0786c85628d987b3ca0f9b0744'
  else
    url 'https://drone.io/github.com/goldeneggg/lsec2/files/artifacts/bin/darwin_amd64/lsec2'
    sha256 'ca7b6a91bda4a81839f307b92a7c74f2550cf6ef946fb14e2582314b100a0556'
  end

  homepage 'https://github.com/goldeneggg/lsec2'
  version '0.0.1'

  def install
    bin.install 'lsec2'
  end
end
