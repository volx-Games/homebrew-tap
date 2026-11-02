# Room Service Homebrew Tap

[Room Service](https://roomservices.pro/) for macOS, the developer command center for projects, ports, cleanup and coding agents.

```bash
brew trust --cask arda-personal/tap/room-service
brew install --cask arda-personal/tap/room-service
```

Homebrew 7 and later load casks from taps outside Homebrew only after `brew trust`; older versions skip the first line.

This installs `Room Service.app` and the `roomservice` command line tool. The app updates itself with Sparkle, so `brew upgrade` is not needed. Pro features are unlocked with a license in the app, as with the direct download.

The cask is updated by the Room Service release script after each release.
