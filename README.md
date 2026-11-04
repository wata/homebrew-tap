# homebrew-tap

Homebrew casks for my Mac apps.

```sh
brew install --cask wata/tap/audioanchor
brew install --cask wata/tap/breaker
brew install --cask wata/tap/timemachineejector
```

- [AudioAnchor](https://github.com/wata/AudioAnchor): keeps your sound output anchored to the device you choose, like your AirPods.
- [Breaker](https://github.com/wata/Breaker): notifies you when your launchd jobs, cron jobs, Folder Actions or SwiftBar plugins break.
- [TimeMachineEjector](https://github.com/wata/TimeMachineEjector): ejects your Time Machine backup disk when a backup finishes.

The apps update themselves with Sparkle, so `brew upgrade` skips them unless you pass `--greedy`.
