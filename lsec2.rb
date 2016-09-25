require "formula"

class Lsec2 < Formula
  homepage 'https://github.com/goldeneggg/lsec2'
  version '0.1.0'

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.1.0/lsec2_linux_386.zip'
      sha256 '7a50e5a9d51eb9080d72fee915505f5f6232ed0e7de86f41a30a55ed8b2449f9'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.1.0/lsec2_darwin_386.zip'
      sha256 'd73190c28fbbc1192a2b002e5aeb64f863c59a1940329f16dacf7907493a1253'
    end
  else
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.1.0/lsec2_linux_amd64.zip'
      sha256 '4cfca712250d8ce2031de8054dc6cf3ceb5198c1dda880523ef6f81ec2bb6b8d'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.1.0/lsec2_darwin_amd64.zip'
      sha256 'b0228c3ab1a5c4428462f4530f66312bdd08a8b6ae7631dc76816cbfbae32725'
    end
  end

  def install
    bin.install 'lsec2'
  end
end
