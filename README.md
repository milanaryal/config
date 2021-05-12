<p align="center">
  <img width="768" alt="wslfetch annotation 2020-07-05 102241" src="https://user-images.githubusercontent.com/9361180/86525639-9b270e80-bea9-11ea-9e01-631086c8dfc2.png" />  
</p>
<h1 align="center">Config</h1>
<p align="center">
  <a href="https://ubuntu.com/wsl">Ubuntu on WSL</a>
  <br />
  <a href="https://aka.ms/wsl"><em>Windows Subsystem for Linux (WSL)</em></a>
</p>
<br />

**Config** is a basic checklist I follow to set up a new Ubuntu's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

## Dotfiles

| File | Description |
| --- | --- |
| `.bashrc` | Customizes the Terminal prompt and echoes the currently checked out Git branch. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | The Git ignore file that I use everywhere. |
| `.gitattributes` | The Git attributes file that I use everywhere. |

## Shell script (WIP)

This repository includes a shell script for executing the bulk of the configuration process. First, install and agree to terms for WSL, then download and run Windows Terminal. Then, enter the following in Terminal:

```bash
cd $Home && mkdir -p Downloads && curl https://raw.githubusercontent.com/MilanAryal/config/master/config.sh > ~/Downloads/config.sh && bash ~/Downloads/config.sh
```

---

## Table of contents

- Checklist
  1. [Install required apps for our projects](#1-install-required-apps-for-our-projects)
  2. [Install WSL](#2-install-wsl)
  3. [Prepare OS](#3-prepare-os)
  4. [Setup Ruby and gems](#4-setup-ruby-and-gems)
  5. [Setup Node.js](#5-setup-nodejs)
- How-to
  - [Debain/ Ubuntu commands](#debain-ubuntu-commands)
    - [Custom bash prompt](#custom-bash-prompt)
    - [Essential apt commands](#essential-apt-commands)
    - [WSL Utilities](#wsl-utilities)
    - [How to Access Your Linux (WSL) Files in Windows 10?](#how-to-access-your-linux-wsl-files-in-windows-10)
    - [Developing in WSL](#developing-in-wal)
    - [How to flush DNS in Ubuntu?](#how-to-flush-dns-in-ubuntu)
  - [Windows commands](#windows-commands)
    - [Windows run command](#windows-run-command)
    - [PowerShell command options](#powershell-command-options)
    - [WSL2: Use the Linux file system for faster performance](#wsl2-use-the-linux-file-system-for-faster-performance)
    - [Windows Terminal – a profiles.json (settings) file](#windows-terminal--a-profilesjson-settings-file)
- [Coding guide](#coding-guide)

---

## Checklist

## 1. Install required apps for our projects

* [WSL2](https://aka.ms/wsl2)
* Try the new cross-platform [PowerShell](https://aka.ms/pscore6) - on [GitHub](https://github.com/PowerShell/PowerShell)
* [Microsoft Terminal](https://aka.ms/terminal) - on [Github](https://github.com/microsoft/terminal)
* [Visual Studio Code](https://code.visualstudio.com/) code editor
* [GitHub Desktop](https://desktop.github.com/)
* GitHub cloning path: `\\wsl$\Ubuntu\home\milan\GitHub` or `\\wsl$\<distro_name>\home\<user_name>\GitHub`

### Essential plugins for VS Code

- [X] [Remote - WSL](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-wsl) - [*Homepage*](https://github.com/Microsoft/vscode-remote-release) - Unique Identifier @id:ms-vscode-remote.remote-wsl
- [x] [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig) - [*Homepage*](https://editorconfig.org/)
- [x] [stylelint](https://marketplace.visualstudio.com/items?itemName=stylelint.vscode-stylelint) - [*Homepage*](https://stylelint.io/)
- [ ] [scss-lint](https://marketplace.visualstudio.com/items?itemName=adamwalzer.scss-lint) - [*Homepage*](https://github.com/sds/scss-lint)
- [x] [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint) - [*Homepage*](https://eslint.org/)
- [x] [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) - [*Homepage*](https://github.com/yzhang-gh/vscode-markdown)
- [ ] [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint) - [*Homepage*](https://github.com/DavidAnson/vscode-markdownlint)
- [X] [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker) - [*Homepage*](https://github.com/streetsidesoftware/vscode-spell-checker)
- [ ] lorem ipsum
- [ ] [Prettier - Code formatter](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode) - [*Homepage*](https://prettier.io/)
- [X] [Emmet built-in VS Code](https://code.visualstudio.com/docs/editor/emmet) - [*Homepage*](https://www.emmet.io/)
- [ ] [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag) - [*Homepage*](https://github.com/formulahendry/vscode-auto-rename-tag)
- [ ] [Bracket Pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer) - [*Homepage*](https://github.com/CoenraadS/BracketPair)
- [ ] [Bracket Pair Colorizer 2](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2) - [*Homepage*](https://github.com/CoenraadS/Bracket-Pair-Colorizer-2)
- [ ] [JavaScript (ES6) code snippets](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets) - [*Homepage*](https://github.com/xabikos/vscode-javascript)
- [ ] [Live Server](https://marketplace.visualstudio.com/items?itemName=ritwickdey.LiveServer) - [*Homepage*](https://github.com/ritwickdey/vscode-live-server)
- [ ] [Live Sass Compiler](https://marketplace.visualstudio.com/items?itemName=ritwickdey.live-sass) - [*Homepage*](https://github.com/ritwickdey/vscode-live-sass-compiler)

## 2. [Install WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

* Before installing Ubuntu distro enable WSL feature with the Powershell

```bash
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

* Get Ubuntu distro from the [Microsoft Store](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6) or with [command-line/script](https://docs.microsoft.com/en-us/windows/wsl/install-manual) on Powershell

## 3. Prepare OS

* Update OS packages

```bash
sudo apt update -y && sudo apt upgrade -y
```

## 4. Setup Ruby and gems

* [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/#apt) with OS native apt

```bash
sudo apt update -y

sudo apt install -y ruby-full build-essential zlib1g-dev

ruby --version
```

And, [avoid installing Ruby Gems as the root user](https://jekyllrb.com/docs/installation/ubuntu/)

```bash
echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

* Or, Install Ruby via version manager for latest stable version
  - [rbenv](https://github.com/rbenv/rbenv)
  - [rvm](https://rvm.io/)
  - [Brightbox](https://www.brightbox.com/docs/ruby/ubuntu/) - Jekyll [install guide](https://jekyllrb.com/docs/installation/windows/#installation-via-bash-on-windows-10)

* [zlib](https://www.zlib.net/) for Nokogiri (鋸) Ruby gem

```bash
sudo apt install zlib1g zlib1g-dev
```

### Install essential gems for our project

* Install [Bundler](https://bundler.io/) gem:

```bash
gem install bundler
```

* Place the `Gemfile` in the project folder and install gem:

```bash
bundle install
```

## 5. [Setup Node.js](https://github.com/nodesource/distributions/blob/master/README.md#deb)

* Install nodejs with OS native apt

```bash
sudo apt update -y

sudo apt install -y nodejs npm build-essential

nodejs --version
npm --version
```

* Or, for latest stable version
  - [Install Node.js and npm from NodeSource](https://github.com/nodesource/distributions/blob/master/README.md#installation-instructions)
  - [nvm](https://github.com/nvm-sh/nvm#installing-and-updating)

### Setup [package.json](https://docs.npmjs.com/files/package.json) file

* Go to project file, and [create a package.json file](https://docs.npmjs.com/creating-a-package-json-file)

* Setup required [dependencies](https://docs.npmjs.com/files/package.json#dependencies)

* And install them via terminal

```bash
npm install
```

* Or, Install them directly via CLI

Eg. Install Webpack command line tools globally:

```bash
npm install -g webpack-cli
```

Eg. Install Webpack on a project folder (which install on `node_modules` folder)

```bash
npm install webpack webpack-cli --save-dev
```

To run package on project installed folder `npx webpack`

<p align="right"><a href="#table-of-contents"><b>↥ To the top</b></a></p>

---

## Debain/ Ubuntu commands

## Custom bash prompt

```bash
# ----------------------------------------------------------------------
# | Add the following line at the bottom of ~/.bashrc file             |
# | this will override the default configuration                       |
# ----------------------------------------------------------------------

# Add Git branch if its present to PS1
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# $ _ Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
export PS1='\[\e]0;${PWD##*/} — bash — ${COLUMNS}x${LINES}\a\]\[\033[00;35m\]→ \[\033[01;36m\]\w\[\033[01;33m\]$(parse_git_branch) \[\033[31m\]\$\[\033[0m\] '
```

`...`

```bash
# Print Linux distro without version, just only dist:
linux_distro() {
  cat /etc/issue | head -n +1 | awk '{print $1}'
}

# Add Git branch if its present to PS1
parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
```

`...`

```bash
# $ _ Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
export PS1='\[\e]0;${PWD##*/} — $(linux_distro) — ${COLUMNS}x${LINES}\a\]\[\033[00;35m\]→ \[\033[01;36m\]\w\[\033[01;33m\]$(parse_git_branch) \[\033[31m\]\$\[\033[0m\] '

# $ _ Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
export PS1='\[\e]0;${PWD##*/} — $(linux_distro) — WSL\a\]\[\033[00;35m\]→ \[\033[01;36m\]\w\[\033[01;33m\]$(parse_git_branch) \[\033[31m\]\$\[\033[0m\] '

# $ _ Custom bash prompt
#
# Includes custom character for the prompt, path, and Git branch name.
export PS1='\[\e]0;${PWD##*/} [WSL: $(linux_distro)]\a\]\[\033[00;35m\]→ \[\033[01;36m\]\w\[\033[01;33m\]$(parse_git_branch) \[\033[31m\]\$\[\033[0m\] '
```

or, a community bash framework:
 - [Bash-it](https://github.com/Bash-it/bash-it)

or, create a custom PS1 variable for your bash:
 - [Bash Prompt Generator](https://github.com/Scriptim/bash-prompt-generator)

## Essential apt commands

List most used commands: `apt`

Update OS packages: `sudo apt update -y && sudo apt upgrade -y`

List all packages: `apt list` && `apt list | more` && `apt list | grep foo`

To install package: `sudo apt install -y <package_name>`

To search package: `apt search <package_name>`

To know the package version before install: `apt policy <package_name>`

To know the package details: `apt show <package_name>`

To delete package and its dependecies: `apt --purge remove <package_name>`

Add repo: `sudo apt-add-repository <ppa: repo_name> && apt update`

Remove repo: `udo apt-add-repository -r <ppa: repo_name> && apt update`

Locate the executable file associated with a given command: `which -a [filename]`

## [WSL Utilities](https://wslutiliti.es/)

```text
wslfetch - creates colorful wsl information
vmstat -s - virtual machine system usage stats
```

## How to access your Linux (WSL) files in Windows 10?

There are two ways to access your Linux files. First, the easy one. From within the Windows Subsystem for Linux environment you want to browse, run the following command:

```text
explorer.exe .
```

You can also access them directly at a `\\wsl$` path. In File Explorer or any other Windows application that can browse files, navigate to the following path:

```text
\\wsl$
```

Or, simply `win key + r` → type `\\wsl$` → Press Enter

## [Developing in WSL](https://code.visualstudio.com/docs/remote/wsl)

```text
# open vs code in wsl
code .

# to open a wsl window directly from a Windows prompt
# use the `--remote` command line parameter:
code --remote wsl+<distro name> <path in WSL>

# for example:
code --remote wsl+Ubuntu /home/jim/projects/c
```

## How to flush DNS in Ubuntu?

Install nscd using the following command if not yet

``` bash
sudo apt install nscd
```

Flush DNS Cache in Ubuntu by restarting the nscd

``` bash
sudo /etc/init.d/nscd restart
```

<p align="right"><a href="#table-of-contents"><b>↥ To the top</b></a></p>

---

## Windows commands

## Windows run command

```text
%temp%
%appdata%
%userprofile%
%programfiles%
shell:RecycleBinFolder → start recycle bin folder
documents
downloads
favorites
pictures
recent
videos

controldevmgmt.msc
regedit
msconfig 

cmd                    → start command prompt app
wt                     → start windows terminal app
powershell
calc
mspaint
notepad
write                  → wordpad
winword
excel
powerpnt
```

## PowerShell command options

```text
$PSversionTable or $PSVersionTable.PSVersion    → Check your PowerShell Version
$host.version or get-host|Select-Object version → Alternative to check PowerShell Version
wsl                               → open default linux distro
wsl --list --verbose or wsl -l -v → list all distro and wsl version
wsl -d <distro_name>              → open required linux distro
wsl --set-version <distro_name> 2 → open linux distro in wsl2
wsl --set-version <distro_name> 1 → open linux distro in wsl1
wsl --set-default-version 2       → make wsl2 default
wsl --shutdown                    → terminate all WSL instances
```

## [WSL2: Use the Linux file system for faster performance](https://docs.microsoft.com/en-us/windows/wsl/compare-versions)

In order to optimize for the fastest performance speed, be sure to store your project files in the Linux file system (not the Windows file system).

For example, when storing your WSL project files:
- Use the Linux file system root directory: `\\wsl$\Ubuntu\home\<user name>\Project`
- Not the Windows file system root directory: `C:\Users\<user name>\Project`

Project files that you are working with using a WSL distribution (like Ubuntu) must be in the Linux root file system to take advantage of faster file system access.

You can access your Linux root file system with Windows apps and tools like File Explorer. Try opening a Linux distribution (like Ubuntu), be sure that you are in the Linux home directory by entering this command: `cd ~`. Then open your Linux file system in File Explorer by entering (don't forget the period at the end): `explorer.exe .`

## Windows Terminal – a `profiles.json` (settings) file

Location path:

```text
%userprofile%\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState
```

`profiles.json`

```text
{
    // Startup as Ubuntu profile {guid}.
    "defaultProfile": "{2c4de342-38b7-51cf-b940-2309a097f518}",
    "profiles":
    {
        "defaults":
        {
            // Put settings here that you want to apply to all profiles.
            "colorScheme": "One Half Dark"
        },
        "list":
        [
            {
                // Make changes here to the Ubuntu WSL profile.
                "guid": "{2c4de342-38b7-51cf-b940-2309a097f518}",
                "hidden": false,
                "name": "Ubuntu",
                "source": "Windows.Terminal.Wsl",
                "colorScheme": "One Half Dark",
                "startingDirectory": "\\\\wsl$\\Ubuntu\\home\\milan"
            },
            {
                // Make changes here to the Debian WSL profile.
                "guid": "{58ad8b0c-3ef8-5f4d-bc6f-13e4c00f2530}",
                "hidden": false,
                "name": "Debian",
                "source": "Windows.Terminal.Wsl",
                "colorScheme": "Solarized Dark",
                "startingDirectory" : "\\\\wsl$\\Debian\\home\\milan"
            }
        ]
    }
}
```

Note: `"startingDirectory": "\\\\wsl$\\[distro-name]\\home\\[linux-user]"` or non-escaped also works `"startingDirectory" : "//wsl$/<distro>/home/<user>"`

Learn more about:

- [documentation on settings](https://aka.ms/terminal-documentation)
- [profiles schema](https://aka.ms/terminal-profiles-schema)
- [adding custom color schemes](https://aka.ms/terminal-color-schemes)

<p align="right"><a href="#table-of-contents"><b>↥ To the top</b></a></p>

---

## Summary

```text
- ide
  + vs code
  + editorconfig extension

- git
  + github desktop

- wsl
  + ubuntu

- ruby
  + ruby-full
  + build-essential
  + bundler

- node.js
  + npm
```

<p align="right"><a href="#table-of-contents"><b>↥ To the top</b></a></p>

---

## Coding guide

camelCase for JavaScript/jQuery, underscores for PHP/Liguid tag, and hyphens for CSS. Boom!

* [Code Guide by Mark Otto](https://codeguide.co/)
* [Google Style Guides](https://google.github.io/styleguide/)
* [HTML Style Guide and Coding Conventions](https://www.w3schools.com/html/html5_syntax.asp), W3 Schools
* [GitHub Guides](https://guides.github.com/)
* [How to name css classes](http://bdavidxyz.com/blog/how-to-name-css-classes/)
* [Ubuntu, ExternalGuides](https://help.ubuntu.com/community/ExternalGuides)
* [About `rel=noopener`](https://mathiasbynens.github.io/rel-noopener/)
* [Rouge code highlighter - List of supported languages and lexers](https://github.com/rouge-ruby/rouge/wiki/List-of-supported-languages-and-lexers)
* [jEmoji searcher by Muan](https://emoji.muan.co/)

<br />

<p align="right"><a href="#table-of-contents"><b>↥ To the top</b></a></p>

---

[![License](https://img.shields.io/github/license/MilanAryal/config.svg?branch=master)](https://github.com/MilanAryal/config/blob/master/LICENSE)
