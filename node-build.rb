require 'formula'

class NodeBuild < Formula
  homepage 'https://github.com/mix3/node-build'
  head 'https://github.com/mix3/node-build.git'

  def install
    ENV['PREFIX'] = prefix
    system "./install.sh"
  end

  test do
    system "#{bin}/node-build --version | grep #{version}"
  end
end
