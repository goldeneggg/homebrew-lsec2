require "formula"

class Lsec2 < Formula
  homepage 'https://github.com/goldeneggg/lsec2'
  version '0.1.1'

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.1.1/lsec2_linux_386.zip'
      sha256 '86db2564cd62c988d65e4876a2266030af89f836505095040064de13eba876ca'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.1.1/lsec2_darwin_386.zip'
      sha256 'e9f1bbb9931c55d1395617dee0d238fa6fb7d1406cdb986f6f8d2ff84ad2f547'
    end
  else
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.1.1/lsec2_linux_amd64.zip'
      sha256 'cdaa02face16de9cd90d2f2061dc5f855e47ed5ab970aefc239058ca4500517e'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.1.1/lsec2_darwin_amd64.zip'
      sha256 '5c7947879a087b7cefd118da9009d4386aa84f0335985b08f805e016da68b9ba'
    end
  end

  def install
    bin.install 'lsec2'
  end
end
