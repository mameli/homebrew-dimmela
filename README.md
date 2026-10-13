# Homebrew tap for Dimmela

[Dimmela](https://dimmela.app) ([source](https://github.com/mameli/Dimmela)) is a macOS menu-bar app for dictation: hold `fn+Space`, speak, and the text is pasted where you are typing, transcribed on your Mac.

```sh
brew install --cask mameli/dimmela/dimmela
```

Uninstall with `brew uninstall --cask dimmela`; add `--zap` to also delete Dimmela's settings, History and speech models. The provider API key in the Keychain is not touched.

The cask is updated by `scripts/release.sh` in the Dimmela repository at every release.
