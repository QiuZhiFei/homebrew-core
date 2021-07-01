class Xchelper < Formula
  desc "Tool for iOS developers to automate tedious tasks like run, test"
  homepage "https://github.com/BlueIntent/xchelper"
  url "https://github.com/BlueIntent/xchelper/archive/refs/tags/0.0.1.tar.gz"
  sha256 "4d002a115f8b2382bec288a8cea052cb979aab394eb334463f290a1bd1045cd5"
  license "MIT"
  def install
    system "make", "install"
    bin.install Dir["build/package//*"]
  end
  test do
    assert_match "xchelper version", pipe_output("#{bin}/xchelper --version 2>&1")
  end
end
