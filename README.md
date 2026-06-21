# clamshellctl Homebrew Tap

Install:

```sh
brew tap dotcom07/clamshellctl
brew install clamshellctl
```

For closed-display, long-running work such as AI agents, builds, downloads, or
scripts, use the CLI. The menu bar app is not distributed through Homebrew yet.

Quick use:

```sh
clamshellctl on
clamshellctl on 30m
clamshellctl on --until-activity
clamshellctl on 2h --until-activity
clamshellctl off
clamshellctl status
```

Bare `clamshellctl on` restores when keyboard, mouse, or trackpad activity
resumes. Add `--until-activity` to a timed session to restore on either timer
expiry or activity.

Upgrade later:

```sh
brew update
brew upgrade clamshellctl
```
