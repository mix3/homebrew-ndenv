require 'formula'

class Ndenv < Formula
  homepage 'https://github.com/mix3/ndenv'
  head 'https://github.com/mix3/ndenv.git'

  def install
    prefix.install 'bin', 'completions', 'libexec'

    # Run rehash after installing.
    system "#{bin}/ndenv", "rehash"
  end

  def caveats; <<-EOS.undent
    To enable shims add to your profile:
      if which ndenv > /dev/null; then eval "$(ndenv init -)"; fi
    EOS
  end
end
