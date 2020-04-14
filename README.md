# Config

OS: [Ubuntu on Windows 10](https://tutorials.ubuntu.com/tutorial/tutorial-ubuntu-on-windows) // *[Windows Subsystem for Linux (WSL)](https://en.wikipedia.org/wiki/Windows_Subsystem_for_Linux)*

<br />

![screenshot](https://user-images.githubusercontent.com/9361180/62588374-3d7af280-b8e5-11e9-9957-1618de71c6d0.png)

**Config** is a basic checklist I follow to set up a new Ubuntu's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

<br />

---

<br />

## Checklist

<br />

### 1. [Install WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

* Before installing Ubuntu distro enable WSL feature with the Powershell

```bash
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`
```

* Get Ubuntu distro from the [Microsoft Store](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6) or with [command-line/script](https://docs.microsoft.com/en-us/windows/wsl/install-manual) on Powershell

<br />

### 2. Prepare OS

Update OS packages

```bash
$ sudo apt-get update -y && sudo apt-get upgrade -y
```

<br />

### 3. Setup Ruby and gems

[Install Ruby](https://www.ruby-lang.org/en/documentation/installation/#apt) directly

```bash
$ sudo apt-get install ruby-full`
```

Or, [Install Ruby via version manager](https://jekyllrb.com/docs/installation/windows/#installation-via-bash-on-windows-10)

Add optimised Ruby Version Manager repo from [Brightbox](https://www.brightbox.com/docs/ruby/ubuntu/):

``` bash
$ sudo sudo apt-add-repository ppa:brightbox/ruby-ng
```

Update system 

```bash
$ sudo apt-get update
```

Install specific Ruby version:

``` bash
$ sudo apt-get install ruby2.5 ruby2.5-dev build-essential dh-autoreconf
```
#### Install essential gems for our project

Install Bundler gem: 

```bash
$ sudo gem install bundler`
```

Place the `Gemfile` in the project folder and install gem: 

```bash
$ bundle install
```

<br />

### 4. [Setup Node.js](https://github.com/nodesource/distributions/blob/master/README.md#deb)

Node.js v12.x:

```bash
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
```

#### Setup [package.json](https://docs.npmjs.com/files/package.json) file

* Go to project file, and [create a package.json file](https://docs.npmjs.com/creating-a-package-json-file)

* Setup required [dependencies](https://docs.npmjs.com/files/package.json#dependencies)

* And install them via terminal

```bash
$ sudo npm install
```

Or, Install them directly via CLI

Eg. Install Gulp command line tools globally:

```bash
$ sudo npm install -g gulp-cli
```

Eg. Install Gulp on a project folder (which install on `node_modules` folder)

```bash
$ sudo npm install gulp gulp-cli --save-dev
```

<br />

--- 

<br />

#### How to flush DNS in Ubuntu?

Install nscd using the following command if not yet

``` bash
sudo apt-get install nscd
```

Flush DNS Cache in Ubuntu by restarting the nscd

``` bash
sudo /etc/init.d/nscd restart
```

<br />

---

<br />

#### Summary

```bash
- text editor
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
  + gulp.js
```

<br />

---

[![License](https://img.shields.io/github/license/MilanAryal/config.svg?branch=master)](https://github.com/MilanAryal/config/blob/master/LICENSE)
