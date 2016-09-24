require "formula"

class Lsec2 < Formula
  if Hardware::CPU.is_32_bit?
    url 'https://drone.io/github.com/goldeneggg/lsec2/files/artifacts/bin/darwin_386/lsec2'
    sha256 '21554888234b2582cf37537193c2c971ca5a26612e7ada21a4d2ee6a7eb7f785'
  else
    url 'https://drone.io/github.com/goldeneggg/lsec2/files/artifacts/bin/darwin_amd64/lsec2'
    sha256 '59ff6920e3d2bcfd2886db484586933275f49a14fc4b2ce407b0d4e8acf91768'
  end

  homepage 'https://github.com/goldeneggg/lsec2'
  version '0.0.2'

  def install
    bin.install 'lsec2'
  end
end
