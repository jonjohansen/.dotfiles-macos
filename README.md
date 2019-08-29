<p align="center">
  <a href="https://github.com/jonjohansen/.dotfiles-macos">
    <img src="dotfiles-macos.png" alt="Logo" width="420">
  </a>

  <p align="center">
    My customized dotfiles for macOS
    <br />
    <br />
    <strong>• Homebrew • iTerm • VSCode • Oh my zsh • Mac preferences •</strong>
    <br />
    <img src="https://travis-ci.com/jonjohansen/.dotfiles-macos.svg?token=ubsrKBxqTLr9vgrzSXu1&branch=master">
  </p>
</p>

## Requirements
To be able to install the dotfiles, you are going to need `git` and `curl`. These are shipped with the **command-line-tools.** To install these run:

```
xcode-select --install
```
## Installation
The dotfiles are configured to be installed under `~/.dotfiles-macos/`by default and should be cloned into `$HOME`.
**See** [location](#Location) to change this.
<!--
### Direct install
Installation directly can be done with: 
```
CURL THING
```
-->
### Manual install
Clone this repository with:
```
gitlink
```
#### Full installation: 
```
./installation
```
#### Only configurations & settings:
```
./config
```
## Customize
Almost everything can be customized, and it is recommended to get an overlook of what the dotfiles install, adjust them to preferred settings.
### Location 
If you want to install the dotfiles somewhere else some paths are dependent on the DOTFILES variable.

in **`.zshrc`**
```
export DOTFILES="$HOME/.dotfiles-macos/"
```
**Note**:

The reference to `$DOTFILES` in  `installation` will figure itself out. Don't worry about it.

## Content
### GUI applications:
* iTerm
* Visual Studio Code
* Spotify
* Slack
* Discord
### Configurations and settings

| Program           | Type           | File                     |
|-------------------|----------------|--------------------------|
|macOS              |settings        |`.macos`                  |
|iTerm              |settings        |`.iterm`                  |
|                   |config           |`/iterm/`                 |
|zsh                |config           |`.zshrc`                  |
|oh-my-zsh          |config           |`.spaceship`              |
|git                |config           |`git/.gitconfig`           |
|                   |ignorefile       |`git/.gitignore`          |
| Visual studio code|settings        |`vscode/settings.json`    |
|                   |snippets        |`vscode/snippets/`        |
|                   |extensions      |`vscode/extensions`       |
|                   |keybindings     |`vscode/keybindings.json` |
### Tools
#### code-extensions
A small CLI has been written to handle saving and installing **vscode extensions**.
The script can be found in `./vscode/bin/code-extensions`.
```
code-extensions [--help] [--interactive] <command> [<args>]

A small tool to help backup and install extensions for Visual Studio Code

 Usage:
    code-extensions  --interactive
    code-extensions  install [--filename <file>]
    code-extensions  backup  [--filename <file>]

 Options:
  -f <file>, --filename <file>  Filename to backup or install from.
  -i, --interactive             Interactive mode.
  -h, --help                    Display this help and exit.
```

##