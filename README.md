# clamshellctl Homebrew Tap

Install the CLI:

```sh
brew tap dotcom07/clamshellctl
brew install clamshellctl
```

Install the menu bar app:

```sh
brew tap dotcom07/clamshellctl
brew install --cask clamshellctl-app
```

The CLI is the recommended stable install today. The menu bar app is the
friendlier tester build; a public non-developer release should be Developer ID
signed and notarized so macOS opens it without Gatekeeper warnings.

For closed-display, long-running work such as AI agents, builds, downloads, or
scripts, prefer the CLI. If you want the menu bar app for that workflow, use
Strong Mode. The app's Standard Mode is mainly for brightness and mute, and may
not keep a closed MacBook awake.

Upgrade later:

```sh
brew update
brew upgrade clamshellctl
brew upgrade --cask clamshellctl-app
```
