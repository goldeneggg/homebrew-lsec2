require "formula"

class Lsec2 < Formula
  homepage 'https://github.com/goldeneggg/lsec2'
  version '0.2.2'

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.2/lsec2_linux_386.zip'
      sha256 '87d588b72bcaaf404b19422e1b773cf35de6e41de7777fabbeed4ce15bb56510'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.2/lsec2_darwin_386.zip'
      sha256 'b41483cc802796167bab1c16743c9697a72dbb755ebacb75c5fc08d25813509b'
    end
  else
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.2/lsec2_linux_amd64.zip'
      sha256 '0ef070a3e08f46e3a6c636eb38225fbd5b14ee29c77a33d3f34c01b00d8df3ed'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.2/lsec2_darwin_amd64.zip'
      sha256 'fe2a3fd35a799144fea2ba831a511e059b703e5bec892e6f9cda12f80d6c08f8'
    end
  end

  def install
    bin.install 'lsec2'
  end
end
