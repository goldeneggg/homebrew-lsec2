require "formula"

class Lsec2 < Formula
  homepage 'https://github.com/goldeneggg/lsec2'
  version '0.2.0'

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.0/lsec2_linux_386.zip'
      sha256 'be0cd94b40c40c3d8b237539e39d55100608771aee44dbb97e01b98051b5e032'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.0/lsec2_darwin_386.zip'
      sha256 'd2552ab2fab1c692ec5f0c3c5f34d18cc73d8d5fa1492873b1aac3b2e67502f8'
    end
  else
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.0/lsec2_linux_amd64.zip'
      sha256 'e3f6f3c1b0b80ebf54df4a8d2e2c4592399e2dab307ce2ec51b0e3f87cc6eab4'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.0/lsec2_darwin_amd64.zip'
      sha256 '76c4d2ed02118c64b21d1ff76d1af00bedf47226bc4927f6ff3356ad7ae2618c'
    end
  end

  def install
    bin.install 'lsec2'
  end
end
