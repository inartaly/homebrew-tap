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
casks.

Requires an Apple Silicon Mac and macOS 13 or later.

### Upgrade

```sh
brew upgrade --cask tempbar
```

### Uninstall

```sh
brew uninstall --cask tempbar
```

To also remove TempBar preferences:

```sh
brew uninstall --cask --zap tempbar
```

### Notes

TempBar is ad-hoc signed but not notarized. If macOS blocks the first launch,
allow it under **System Settings → Privacy & Security**. See the
[TempBar repository](https://github.com/inartaly/TempBar) for details.
