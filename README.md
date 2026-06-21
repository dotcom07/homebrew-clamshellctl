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

Upgrade later:

```sh
brew update
brew upgrade clamshellctl
brew upgrade --cask clamshellctl-app
```
