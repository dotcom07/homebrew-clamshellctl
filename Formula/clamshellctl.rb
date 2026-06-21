class Clamshellctl < Formula
  desc "Native macOS clamshell helper for brightness, mute, and disablesleep"
  homepage "https://github.com/dotcom07/clamshellctl"
  url "https://github.com/dotcom07/clamshellctl/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "17059f375090679f20aa376361dd4665f229bcd9b43d9f261bc56b01947202c5"
  license "BSD-2-Clause"
  head "https://github.com/dotcom07/clamshellctl.git", branch: "main"

  depends_on :macos

  def install
    system "make"
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    output = shell_output("#{bin}/clamshellctl 2>&1", 64)
    assert_match "usage: #{bin}/clamshellctl on|off|status|diag", output
  end
end
