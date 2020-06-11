# Config

OS: [Ubuntu on Windows 10](https://tutorials.ubuntu.com/tutorial/tutorial-ubuntu-on-windows) // *[Windows Subsystem for Linux (WSL)](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux)*

<br>

![screenshot](https://user-images.githubusercontent.com/9361180/62588374-3d7af280-b8e5-11e9-9957-1618de71c6d0.png)

**Config** is a basic checklist I follow to set up a new Ubuntu's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

## Checklist

## 1. Install required apps for our projects

* [Visual Studio Code](https://code.visualstudio.com/) code editor
* [Atom](https://atom.io/) text editor
* [GitHub Desktop](https://desktop.github.com/)

### Install plugins for our IDE

#### VS Code plugins:
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
$ sudo apt-get update -y && sudo apt-get upgrade -y
```

## 4. Setup Ruby and gems

* Install [zlib](https://www.zlib.net/) for Nokogiri (鋸) Ruby gem

```bash
$ sudo apt-get install zlib1g zlib1g-dev
```

* Check stable Ruby version on [GitHub Pages](https://pages.github.com/versions/)

* [Install Ruby](https://www.ruby-lang.org/en/documentation/installation/#apt) directly

```bash
$ sudo apt-get install ruby-full
```

*  Or, [Install Ruby via version manager](https://jekyllrb.com/docs/installation/windows/#installation-via-bash-on-windows-10)

Add optimised Ruby Version Manager repo from [Brightbox](https://www.brightbox.com/docs/ruby/ubuntu/):

``` bash
$ sudo apt-add-repository ppa:brightbox/ruby-ng
```

* Update system

```bash
$ sudo apt-get update
```

*  Install specific Ruby version:

``` bash
$ sudo apt-get install ruby2.5 ruby2.5-dev build-essential dh-autoreconf
```

### Install essential gems for our project

* Install [Bundler](https://bundler.io/) gem:

```bash
$ sudo gem install bundler
```

* Place the `Gemfile` in the project folder and install gem:

```bash
$ bundle install
```

## 5. [Setup Node.js](https://github.com/nodesource/distributions/blob/master/README.md#deb)

* Node.js v12.x:

```bash
$ curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

$ sudo apt-get install -y nodejs
```

### Setup [package.json](https://docs.npmjs.com/files/package.json) file

* Go to project file, and [create a package.json file](https://docs.npmjs.com/creating-a-package-json-file)

* Setup required [dependencies](https://docs.npmjs.com/files/package.json#dependencies)

* And install them via terminal

```bash
$ sudo npm install
```

* Or, Install them directly via CLI

Eg. Install Gulp command line tools globally:

```bash
$ sudo npm install -g gulp-cli
```

Eg. Install Gulp on a project folder (which install on `node_modules` folder)

```bash
$ sudo npm install gulp gulp-cli --save-dev
```

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
  + ruby
  + ruby-dev
  + bundler
  + bundle gh-pages

- node.js
  + npm
  + gulp
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
