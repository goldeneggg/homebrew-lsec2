require "formula"

class Lsec2 < Formula
  homepage 'https://github.com/goldeneggg/lsec2'
  version '0.0.3'

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.0.3/lsec2_linux_386.zip'
      sha256 '31e874acd26987387c30ead3265b25153f73b433fbe4a1de3e30e4e52201ae17'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.0.3/lsec2_darwin_386.zip'
      sha256 '1870ebf11a5c4b9567343ed0a1f0dcce35165fe69d2fa9fdc54e7d03ebb003ac'
    end
  else
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.0.3/lsec2_linux_amd64.zip'
      sha256 'db269e072d03041087c75b68a06dce4fd05953566ab63364c4c6d2abfe314a92'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.0.3/lsec2_darwin_amd64.zip'
      sha256 '7f8b90c6ade162d2cc66fed197d34c35350ec1b072fcac2c5c4b6d9cdf1acae1'
    end
  end

  def install
    bin.install 'lsec2'
  end
end
