require "formula"

class Lsec2 < Formula
  homepage 'https://github.com/goldeneggg/lsec2'
  version '0.2.4'

  if Hardware::CPU.is_32_bit?
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.4/lsec2_linux_386.zip'
      sha256 'e9ea9be0bd4caa94d0423639c3b60753f8b841d92cc72585e00a5553dce291c6'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.4/lsec2_darwin_386.zip'
      sha256 '515415208ac9f1eedfc4e89a94b477af2db9d3e1afa60f383a5b9c5821874b89'
    end
  else
    if OS.linux?
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.4/lsec2_linux_amd64.zip'
      sha256 '979a37f473069f45fb53cd671e2eb34d44cbac595fc7d958ce07a1d15ba3e399'
    else
      url 'https://github.com/goldeneggg/lsec2/releases/download/v0.2.4/lsec2_darwin_amd64.zip'
      sha256 '37c244500473ac6c9e15679115598a15d6509c5ac03c265603d7c5d9ff35c426'
    end
  end

  def install
    bin.install 'lsec2'
  end
end
