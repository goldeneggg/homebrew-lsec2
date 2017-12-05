require "formula"

class Lsec2 < Formula
  homepage 'https://github.com/goldeneggg/lsec2'
  version '0.2.1'

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.1/lsec2_linux_386.zip'
      sha256 'ec0f951db6ad3fc464d064bbb7a61855078ca50e4eb2f130602fe76bb791bc32'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.1/lsec2_darwin_386.zip'
      sha256 '821b4ace772fcd56049fd1122f5d820b5e5a529866599be088a8e155b6078e49'
    end
  else
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.1/lsec2_linux_amd64.zip'
      sha256 'f98ba0b25122c481e6a42bfc25e75cf28b1f880c5405ca129be73385e1bcf47f'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.1/lsec2_darwin_amd64.zip'
      sha256 '9d191bf2f569e511a8bcea54fe05dcf691546924ca8ab0e080dbc4a5eb382fee'
    end
  end

  def install
    bin.install 'lsec2'
  end
end
