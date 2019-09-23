<p align="center">
  <a href="https://github.com/jonjohansen/.dotfiles-macos">
    <img src="dotfiles-macos.png" alt="Logo" width="420">
  </a>

  <p align="center">
    My customized dotfiles for macOS
    <br />
    <br />
    <strong>• Homebrew • iTerm • VSCode • Oh-my-zsh • Mac preferences •</strong>
    <br />
    <img src="https://travis-ci.com/jonjohansen/.dotfiles-macos.svg?token=ubsrKBxqTLr9vgrzSXu1&branch=master">
  </p>
</p>

## Overview
* [Requirements](#requirements)
* [Installation](#installation)
* [Customization](#customize)
* [Content](#content)
## Requirements
To be able to install the dotfiles, you are going to need `git` and `curl`. These are shipped with the **command-line-tools.** To install these run:

```
xcode-select --install
```
## Installation
The dotfiles are configured to be installed under `~/.dotfiles-macos/`by default and should be cloned into `$HOME`.
**See** [location](#Location) to change this.

1. Clone this repository with:
```
git clone https://github.com/jonjohansen/.dotfiles-macos.git ~/.dotfiles-macos
```
2. 
#### Full installation
Execute the installation script for full installation
```
./installation
```
This installs all the applicatins, settings and configurations
#### Partial installation
This only installs configurations and settings (Recommended for only adjusting your settings, dotfiles etc)
```
./config
```

## Customize
Everything can be customized, and it is recommended to get an overlook of what the dotfiles install and adjust them to preferred settings.
### Location 
If you want to install the dotfiles somewhere else some paths are dependent on the DOTFILES variable.

in **`.zshrc`**
```
export DOTFILES="$HOME/.dotfiles-macos/"
```
**Note**:

The reference to `$DOTFILES` in  `installation` will figure itself out. Don't worry about it. 😉

## Content
### General:
* A bunch of settings i use for my macOS
### Applications:
* [iTerm][_iterm2] - Terminal
* [Visual Studio Code][_code] - Editor
* [Spotify][_spotify] - Music
* [Slack][_slack] - Chat
* [Discord][_discord] - Chat
### Tools
* [zsh][_zsh] / [Oh My Zsh][_oh-my-zsh] - Shell configuration
* [basher][_basher] - Shell script package manager


### Placements of configurations and settings

| What                      | Type           | Where                    |
|---------------------------|----------------|--------------------------|
|[macOS][_macos_settings]   |settings        |`.macos`                  |
|[iTerm][_iterm2]           |settings        |`.iterm`                  |
|                           |config           |`/iterm/`                 |
|[git][_git]                |config           |`git/.gitconfig`           |
|                           |ignorefile       |`git/.gitignore`          |
|[zsh][_zsh]                |config           |`.zshrc`                  |
|[oh-my-zsh][_oh-my-zsh]    |config           |`.spaceship`              |
|[basher][_basher]          |                |                          |
|                           |Main folder     |`~/.basher`               |
|                           |basher packages |`.basher`                 |
|[Visual studio code][_code]|settings        |`vscode/settings.json`    |
|                           |snippets        |`vscode/snippets/`        |
|                           |extensions      |`vscode/extensions`       |
|                           |keybindings     |`vscode/keybindings.json` |


## Disclaimer
These are my personal settings. You *should* read through every line. Not that you're going to,
but it is recommended to find your own preferences. 💅

[_macos_settings]: https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/
[_zsh]: https://www.zsh.org/
[_basher]: https://github.com/basherpm/basher
[_oh-my-zsh]: https://github.com/robbyrussell/oh-my-zsh/
[_code]: https://code.visualstudio.com/
[_iterm2]: https://www.iterm2.com/
[_slack]: https://slack.com
[_discord]: https://discordapp.com/
[_spotify]: https://www.spotify.com/
[_git]: https://git-scm.com/