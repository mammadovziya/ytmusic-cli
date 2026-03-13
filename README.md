# ytmusic-cli

YouTube Music player for your terminal. Search and stream music directly from YouTube — no browser, no ads, no distractions.

## Requirements

- [mpv](https://mpv.io) — media player
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) — YouTube stream extractor

**macOS**
```sh
brew install mpv yt-dlp
```

**Linux (Debian/Ubuntu)**
```sh
sudo apt install mpv
pip install yt-dlp
```

**Windows**
```sh
winget install mpv.mpv
winget install yt-dlp.yt-dlp
```

## Installation

### via NPM
```sh
npm install -g @mammadovziya/ytmusic-cli
```

### via Homebrew (macOS)
```sh
# Until it is merged into homebrew-core:
brew install mammadovziya/tap/ytmusic-cli
```

## Usage

```sh
ytmusic-cli
```

### Shell Shortcut (Fast Access)
For even faster access, you can add an alias to your shell profile (`.zshrc` or `.bashrc`):
```sh
alias ym='ytmusic-cli'
```
Now just type `ym` to start listening!

## Controls

### Player

| Key | Action |
|-----|--------|
| `Space` | Pause / Resume |
| `←` / `→` | Seek -10s / +10s |
| `N` | Next track |
| `P` | Previous track |
| `F` | Toggle favorite |
| `X` | Toggle shuffle |
| `R` | Cycle Repeat (Off / One / All) |
| `U` | View playback queue |
| `I` | Track info & URL |
| `A` | Add current track to playlist |
| `O` | Open playlists |
| `L` | Open favorites |
| `D` | Open downloads |
| `W` | Download / Delete track |
| `H` | Help menu |
| `G` | Cycle language |
| `S` | Back to search |
| `Q` / `Ctrl+C` | Quit |

### Search

| Key | Action |
|-----|--------|
| Type + `Enter` | Search |
| `↑` / `↓` | Navigate results |
| `Enter` | Play selected track |
| `L` | Open favorites |
| `O` | Open playlists |
| `D` | Open downloads |
| `H` | Help menu |

### Playlists & Lists

| Key | Action |
|-----|--------|
| `Enter` | Open playlist / Play track |
| `C` | Create new playlist |
| `R` | Rename playlist |
| `D` | Delete playlist / Remove track |
| `W` | Download all tracks in list |
| `Esc` / `Q` | Go back |

## Features

- **Search & Play** — Search YouTube and stream audio directly.
- **Standalone Terminal Experience** — Help menus, queue management, and track info all inside the terminal.
- **Repeat Modes** — Loop a single track or your entire playlist.
- **Radio Mix** — Auto-queues related tracks when your list ends.
- **Favorites & Downloads** — Save tracks for offline listening or quick access.
- **Playlists** — Create and manage your own collections.
- **Multilingual** — Support for English, Azerbaijani (AZ), and Turkish (TR).

## License

MIT
