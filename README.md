# homebrew-lurar

Homebrew tap for [Lurar](https://lurar.app/) — a free, open-source, system-wide parametric
headphone EQ for macOS with the AutoEq catalog built in.

## Install

```sh
brew install --cask lsjoberg/lurar/lurar
```

or

```sh
brew tap lsjoberg/lurar
brew install --cask lurar
```

## Update / uninstall

Lurar updates itself via Sparkle, so `brew upgrade` is usually a no-op (the cask is marked
`auto_updates true`). To remove it completely, including preferences and caches:

```sh
brew uninstall --zap --cask lurar
```

The cask in `Casks/lurar.rb` is bumped automatically by Lurar's release pipeline on every
tagged release.
