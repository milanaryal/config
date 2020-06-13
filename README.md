<p align="center">
  <img width="768" alt="Annotation 2020-06-13 145332" src="https://user-images.githubusercontent.com/9361180/84564991-cd9b8b00-ad85-11ea-89e0-17b073e06bb2.png">
</p>
<!-- ![screenshot](https://user-images.githubusercontent.com/9361180/62588374-3d7af280-b8e5-11e9-9957-1618de71c6d0.png) -->
<br>

# Config

OS: [Ubuntu on Windows 10](https://tutorials.ubuntu.com/tutorial/tutorial-ubuntu-on-windows) // *[Windows Subsystem for Linux (WSL)](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux)*
  
**Config** is a basic checklist I follow to set up a new Ubuntu's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

## Checklist

## 1. Install required apps for our projects

* [Visual Studio Code](https://code.visualstudio.com/) code editor
* [Atom](https://atom.io/) text editor
* [GitHub Desktop](https://desktop.github.com/)

### Install plugins for our IDE

#### VS Code plugins:
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

#### Atom plugins:
- [x] [EditorConfig](https://github.com/sindresorhus/atom-editorconfig) - [*Homepage*](https://editorconfig.org/)
- [x] [linter-stylelint](https://github.com/AtomLinter/linter-stylelint) - [*Homepage*](https://stylelint.io/)
- [ ] [linter-scss-lint](https://atom.io/packages/linter-scss-lint) - [*Homepage*](https://github.com/sds/scss-lint)
- [x] [linter-eslint](https://atom.io/packages/linter-eslint) - [*Homepage*](https://eslint.org/)

## 2. [Install WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

* Before installing Ubuntu distro enable WSL feature with the Powershell

```bash
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
```

* Get Ubuntu distro from the [Microsoft Store](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6) or with [command-line/script](https://docs.microsoft.com/en-us/windows/wsl/install-manual) on Powershell

## 3. Prepare OS

* Update OS packages

```bash
sudo apt-get update -y && sudo apt-get upgrade -y
```

Or, new method

```bash
sudo apt update -y && sudo apt upgrade -y
```

## 4. Setup Ruby and gems

* Install [zlib](https://www.zlib.net/) for Nokogiri (鋸) Ruby gem

```bash
sudo apt-get install zlib1g zlib1g-dev
```

* Check stable Ruby version on [GitHub Pages](https://pages.github.com/versions/)

* [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/#apt) with OS native apt

```bash
sudo apt update

sudo apt install ruby-full build-essential zlib1g-dev
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
sudo apt update

sudo apt install -y nodejs npm

nodejs --version
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

---

## How to flush DNS in Ubuntu?

Install nscd using the following command if not yet

``` bash
sudo apt-get install nscd
```

Flush DNS Cache in Ubuntu by restarting the nscd

``` bash
sudo /etc/init.d/nscd restart
```

## How to Access Your Linux (WSL) Files in Windows 10?

There are two ways to access your Linux files. First, the easy one. From within the Windows Subsystem for Linux environment you want to browse, run the following command:

```text
explorer.exe .
```

You can also access them directly at a `\\wsl$` path. In File Explorer or any other Windows application that can browse files, navigate to the following path:

```text
\\wsl$
```

Or, simply `win key + r` => type `\\wsl$` => Press Enter

## Essential apt commands

To install package: `sudo apt install -y <package_name>` or `sudo apt-get install -y <package_name>`

To search package: `apt search <package_name>` or `apt-cache search <package_name>`

To know the package version before install: `apt policy <package_name>` or `apt-cache policy <package_name>`

To delete package and its dependecies: `apt --purge remove <package_name>` or `sudo apt-get --purge autoremove <package_name>`

Add repo: `sudo apt-add-repository <ppa: repo_name> && apt update`

Remove repo: `udo apt-add-repository -r <ppa: repo_name> && apt update`

## Useful Debian/Ubuntu commands

List all packages: `apt list` && `apt list | more` && `apt list | grep foo`

List installed packages: `apt list --installed` && `apt list --installed | grep {pkgNameHere}`

List installed upgradable packages: `apt list --upgradable`

List package dependency: `apt depends {pkgNameHere}` eg. `apt depends sudo`

How do I performs recursive dependency listings similar to apt-cache? `apt rdepends {pkgNames}` eg. `apt rdepends sudo`

How do I hold a package? Package holding means it can not be upgraded till you run unhold on it again. The syntax is: `apt hold {pkgName}` eg. `apt hold sudo`

How do I unhold a package? `apt unhold {pkgName}` eg. `apt unhold sudo`

Search for packages: `apt search <search_term>` or `apt-cache search <search_term>`

See policy of apt package: `apt list -a {pkgNameHere}` eg. `apt list -a sudo` or `apt policy <package_name>` or `apt-cache policy <package_name>`

Show detail info for packages: `apt show <search_term>` or `apt-cache show <search_term>`

Install package: `sudo apt install -y <package_name>` or `sudo apt-get install -y <package_name>`

Remove the binary files of a package: `apt remove <package_name>` or `apt-get remove <package_name>`

Remove everything related to a package, including its configuration files (purge everything): `apt purge <package_name>` or `apt-get purge <package_name>`

Remove package and everything related to a package: `apt remove --purge <package_name>` or `apt-get remove --purge <package_name>`

The autoremove option to remove packages that were automatically installed to satisfy dependencies for other packages and are now no longer needed as dependencies changed or the package(s) needing them were removed in the meantime: `sudo apt autoremove` && `sudo apt --purge autoremove`

Upgrade all installed packages: `sudo apt upgrade` or `sudo apt-get upgrade`

Upgrade one specific package: `sudo apt upgrade <package_name>` or `sudo apt-get upgrade <package_name>`

Often see update and upgrade together like this: `sudo apt update && sudo apt upgrade -y` or `sudo apt-get update && sudo apt-get upgrade -y`

Upgrade vs dist-upgrade (not recommended on production systems): `sudo apt full-upgrade` or `apt-get dist-upgrade`

List all services on a Linux system: `service --status-all`

Show Ubuntu version information: `lsb_release -a` && `uname -r`

How do I edit the source information file i.e. /etc/apt/sources.list? `sudo apt edit-sources`

## apt command options

From the apt(8) command man page:

```text
list - list packages based on package names
search - search in package descriptions
show - show package details
install - install packages
remove - remove packages
autoremove - Remove automatically all unused packages
update - update list of available packages
upgrade - upgrade the system by installing/upgrading packages
full-upgrade - upgrade the system by removing/installing/upgrading packages
edit-sources - edit the source information file  
```

Blog post:
  - [apt v1.0](https://mvogt.wordpress.com/2014/04/04/apt-1-0/)
  - [apt v1.1](https://mvogt.wordpress.com/2015/11/30/apt-1-1-released/)

## Summary

```bash
- text editor
  + vs code
  + atom

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

<br>

---

[![License](https://img.shields.io/github/license/MilanAryal/config.svg?branch=master)](https://github.com/MilanAryal/config/blob/master/LICENSE)
