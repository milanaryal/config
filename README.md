# Config

OS: Windows Subsystem for Linux (WSL)

![screenshot](https://user-images.githubusercontent.com/9361180/62588374-3d7af280-b8e5-11e9-9957-1618de71c6d0.png)

**Config** is a basic checklist I follow to set up a new Ubuntu's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

## Checklist

### 1. [Install WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

* Before install Ubuntu distro enable WSL feature with the Powershell `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`

* Get Ubuntu distro from the [Microsoft Store](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6) or with [command-line/script](https://docs.microsoft.com/en-us/windows/wsl/install-manual) on Powershell

### 2. Prepare OS

* Update OS packages: `$ sudo apt-get update -y && sudo apt-get upgrade -y`

### 3. Setup Ruby and gems

* Install Ruby: `$ sudo apt-get ruby`

Or,

*  Add optimised Ruby Version Manager repo from [Brightbox](https://www.brightbox.com/docs/ruby/ubuntu/):

``` bash
$ sudo apt-add-repository ppa:brightbox/ruby-ng
```

* update system `$ sudo apt-get update`

* Installing Specific Ruby versions:

``` bash
$ sudo apt-get install ruby2.5 ruby2.5-dev build-essential dh-autoreconf
```

* Install Bundler gem: `$ sudo gem install bundler`

* Place the `Gemfile` in the project folder and install gem: `$ bundle install`

### 4. [Setup Node.js](https://github.com/nodesource/distributions/blob/master/README.md#deb)

* Node.js v12.x:

```bash
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
```

* Install Gulp command line tools: `sudo npm install -g gulp-cli`

---

**How to flush DNS in Ubuntu?**

Install nscd using the following command if not yet

``` bash
sudo apt-get install nscd
```

Flush DNS Cache in Ubuntu by restarting the nscd

``` bash
sudo /etc/init.d/nscd restart
```
---

[![License](https://img.shields.io/github/license/MilanAryal/config.svg?branch=master)](https://github.com/MilanAryal/config/blob/master/LICENSE)
