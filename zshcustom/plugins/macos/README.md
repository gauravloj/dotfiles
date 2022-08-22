# MacOS plugin

This plugin provides a few utilities to make it more enjoyable on macOS (previously named OSX).

To start using it, add the `macos` plugin to your plugins array in `~/.zshrc`:

```zsh
plugins=(... macos)
```

Original author: [Sorin Ionescu](https://github.com/sorin-ionescu)

## Commands

| Command       | Description                                              |
| :------------ | :------------------------------------------------------- |
| `tab`         | Open the current directory in a new tab                  |
| `split_tab`   | Split the current terminal tab horizontally              |
| `vsplit_tab`  | Split the current terminal tab vertically                |
| `ofd`         | Open the current directory in a Finder window            |
| `pfd`         | Return the path of the frontmost Finder window           |
| `pfs`         | Return the current Finder selection                      |
| `cdf`         | `cd` to the current Finder directory                     |
| `pushdf`      | `pushd` to the current Finder directory                  |
| `pxd`         | Return the current Xcode project directory               |
| `cdx`         | `cd` to the current Xcode project directory              |
| `quick-look`  | Quick-Look a specified file                              |
| `man-preview` | Open a specified man page in Preview app                 |
| `showfiles`   | Show hidden files in Finder                              |
| `hidefiles`   | Hide the hidden files in Finder                          |
| `itunes`      | _DEPRECATED_. Use `music` from macOS Catalina on         |
| `music`       | Control Apple Music. Use `music -h` for usage details    |
| `spotify`     | Control Spotify and search by artist, album, track…      |
| `rmdsstore`   | Remove .DS_Store files recursively in a directory        |
| `btrestart`   | Restart the Bluetooth daemon                             |
| `freespace`   | Erases purgeable disk space with 0s on the selected disk |
