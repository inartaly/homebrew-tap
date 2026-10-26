# Homebrew Tap

Homebrew Casks for apps by [inartaly](https://github.com/inartaly).

## TempBar

A native menu bar app showing Apple Silicon CPU and GPU temperatures.

```sh
brew tap inartaly/tap
brew trust inartaly/tap
brew install --cask tempbar
```

Homebrew 7 requires third-party taps to be trusted before it will load their
casks. Requires an Apple Silicon Mac and macOS 13 or later.

### First launch

Homebrew marks downloaded apps as quarantined. Because TempBar is ad-hoc signed
but not notarized, macOS may block the first launch. Allow it under
**System Settings → Privacy & Security**, or run:

```sh
xattr -dr com.apple.quarantine /Applications/TempBar.app
```

### Upgrade

```sh
brew upgrade --cask tempbar
```

### Uninstall

```sh
brew uninstall --cask tempbar
```

To also remove TempBar preferences and its optional Start at Login agent:

```sh
brew uninstall --cask --zap tempbar
```

See the [TempBar repository](https://github.com/inartaly/TempBar) for details.
