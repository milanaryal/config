<p align="center">
  <img width="768" alt="Mac Dev Env Screenshot 2022-11-05 at 06 42 50" src="https://user-images.githubusercontent.com/9361180/200095520-f9bf4b45-1b64-4c3e-898c-8e56a0f5eedf.png" />  
</p>
<br />

# Config

Config is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed with Git, Ruby, Node.js, GitHub, Jekyll, and more so I can more quickly get back to coding.

## Checkout

- [Terminal](https://support.apple.com/guide/terminal/welcome/mac)

- [Xcode Command Line Tools](https://developer.apple.com/xcode/resources/)

- [Visual Studio Code](https://code.visualstudio.com/),
  view source on [Github](https://github.com/Microsoft/vscode).<br />
  Essential extension for VS Code: [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)

- [GitHub Desktop](https://desktop.github.com/),
  view source on [Github](https://github.com/desktop/desktop#readme)<br />
  Or, use [GitHub CLI](https://cli.github.com/manual/gh),
  view source on [Github](https://github.com/cli/cli#readme)

- Setup GitHub Desktop/CLI cloning path: `\home\milan\GitHub` <br />
  (i.e. `\home\<user_name>\GitHub`)

<br />

## Setup VS Code

- Follow the installation process from [official docs](https://code.visualstudio.com/docs/setup/mac#_installation).

- [Launching from the command line](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line) — you can also run VS Code from the terminal by typing 'code' after adding it to the path:

i. Launch VS Code. 

ii. Open the Command Palette `Cmd+Shift+P` and type `shell command` to find the "Shell Command: Install 'code' command in PATH command".

![shell-command](https://user-images.githubusercontent.com/9361180/200259875-962b4c55-4329-4104-82e4-8965072be017.png)

iii. Restart the terminal for the new `$PATH` value to take effect. You'll be able to type `code .` in any folder to start editing files in that folder.

## Setup Homebrew

- Open Terminal app and run following commang to install [Homebrew](https://brew.sh/) in your system:

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- Run these three commands in your terminal to add Homebrew to your PATH:

```zsh
# ~/.zprofile <-> /Users/milan/.zprofile

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/milan/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/milan/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"
```

- Run `brew` help to get started
- Further documentation: <https://docs.brew.sh>

_Homebrew auto install and setup xCode Command Line Tools. For manual installation open Terminal and trigger Xcode Command Line Tools installation: `xcode-select --install`._

<p align="right"><a href="#readme"><b>↥ To the top</b></a></p>

## Setup Ruby

- Install [rbenv](https://github.com/rbenv/rbenv) via Homebrew:

```zsh
brew install rbenv ruby-build
```

- Set up rbenv in your shell. Run `rbenv init` and follow the printed instructions:

```zsh
echo '# rbenv' >> ~/.zprofile
echo 'eval "$(rbenv init -)"' >> ~/.zprofile
```

- Verify rbenv is configured properly:

```zsh
type rbenv
```

- Verify that rbenv is properly set up using _rbenv-doctor_ script:

```zsh
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/main/bin/rbenv-doctor | bash
```

- Download a version of Ruby via rbenv: See <https://gorails.com/setup/macos/13-ventura>.

```zsh
# Download a version of Ruby via rbenv:
$ rbenv install 3.1.2

# Make it the global version of Ruby: 
$ rbenv global 3.1.2

# Additional dependencies:
$ gem install bundler
```

- Ruby setup guide [by Jekyll](https://jekyllrb.com/docs/installation/macos/).

_Installing and managing Ruby with rbenv allows us to specify versions of Ruby on a per-project basis. It also means we can avoid running sudo commands for installing gems and more as it's not affecting OS's system Ruby._

_Having trouble with nokogiri? See <https://stackoverflow.com/a/41491487>._

<p align="right"><a href="#readme"><b>↥ To the top</b></a></p>

## Setup Node.js

- Install [nodenv](https://github.com/nodenv/nodenv) via Homebrew:

```zsh
brew install nodenv
```

- Set up nodenv in your shell. Run  `nodenv init`:

```zsh
echo '# nodenv' >> ~/.zprofile
echo 'eval "$(nodenv init -)"' >> ~/.zprofile
```

- Verify nodenv is configured properly:

```zsh
type nodenv
```

- Verify that nodenv is properly set up using _nodenv-doctor_ script:

```zsh
curl -fsSL https://github.com/nodenv/nodenv-installer/raw/master/bin/nodenv-doctor | bash
```

- Download a version of Node.js via nodenv:

```zsh
# Download a version of Node.js via nodenv:
$ nodenv install 18.12.0

# Make it the global version of Node.js: 
$ nodenv global 18.12.0

# https://www.npmjs.com/package/npm-check-updates
$ npm install -g npm-check-updates
```

_Installing and managing Node.js with nodenv allows us to specify versions of Node on a per-project basis. It also means we can avoid running sudo commands for installing global packages and more as it's not affecting OS's system Node.js._

<p align="right"><a href="#readme"><b>↥ To the top</b></a></p>

## Setup Git

> Please tell me who you are.

- Run to set your account's default identity:

```zsh
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

_Omit `--global` to set the identity only in this repository. For privacy purpose use GitHub private email address `ID+USERNAME@users.noreply.github.com` for git config._

<p align="right"><a href="#readme"><b>↥ To the top</b></a></p>

## Setup GitHub CLI

- [Installation](https://github.com/cli/cli#installation)

```zsh
brew install gh
```

- [gh auth](https://cli.github.com/manual/gh_auth)

```zsh
gh auth login
```

- Follow output of [GitHub CLI](https://cli.github.com/)

_[See output](gh-auth.md)._

- [gh repo clone](https://cli.github.com/manual/gh_gist_clone)

```zsh
gh repo clone MilanAryal/config
```

- [gh repo sync](https://cli.github.com/manual/gh_repo_sync)

```zsh
cd MilanAryal/config
gh repo sync
```

<p align="right"><a href="#readme"><b>↥ To the top</b></a></p>

### Firefox Setup

- [Best Privacy Web Browser to Stay Private in 2023](https://www.privacytools.io/private-browser)
- [Firefox Hardening Resources](https://chrisx.xyz/blog/yet-another-firefox-hardening-guide/)
- (The Ultimate Guide to Firefox Hardening!)[https://www.youtube.com/watch?v=F7-bW2y6lcI]
- `about:config` -- `fission.autostart` -- `true`
- `about:config` -- `extensions.pocket.enabled` - `false`

### Invitation

Sign-up with the following invitation link to get extra 500 MB bonus cloud space:

- [Dropbox](https://www.dropbox.com/referrals/AADapKnBJpLqYvSvMcBxGAk9N4iiYHh7hJI?src=global9)
- [OneDrive](https://onedrive.live.com?invref=8276ca569c4bc513&invscr=90)
- [OneDrive](https://onedrive.live.com/?invref=f7e00c70d669a457&invscr=90) - Bhai
