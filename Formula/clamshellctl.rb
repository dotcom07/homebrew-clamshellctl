class Clamshellctl < Formula
  desc "Native macOS clamshell helper for brightness, mute, and disablesleep"
  homepage "https://github.com/dotcom07/clamshellctl"
  url "https://github.com/dotcom07/clamshellctl/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "8c5ff89b8f5b3be382b8a22e33d62a6821eedb2b6a84c1d31b98a8084d80e14a"
  license "BSD-2-Clause"
  head "https://github.com/dotcom07/clamshellctl.git", branch: "main"

  depends_on :macos

  def install
    system "make", "VERSION=#{version}"
    system "make", "VERSION=#{version}", "PREFIX=#{prefix}", "install"
  end

  def caveats
    <<~EOS
      Quick start:
        clamshellctl on       # dim built-in display, mute audio, prevent sleep on AC power
        clamshellctl on 30m   # turn on for 30 minutes, then restore
        clamshellctl on --until-activity
                              # restore when keyboard/mouse activity resumes
        clamshellctl off      # restore saved brightness/audio and allow normal sleep
        clamshellctl status   # show current clamshell-related state
        clamshellctl diag     # print display/audio/power diagnostics

      The on/off commands may ask for an administrator password because macOS
      requires privileges to change pmset disablesleep.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/clamshellctl --version")
  end
end
