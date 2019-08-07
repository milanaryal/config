# Config

OS: Windows Subsystem for Linux (WSL)

![screenshot](https://user-images.githubusercontent.com/9361180/62588374-3d7af280-b8e5-11e9-9957-1618de71c6d0.png)

**Config** is a basic checklist I follow to set up a new Ubuntu's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

## Checklist

### 1. [Install WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

* Before install Ubuntu distro enable WSL feature with the Powershell `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`
* Get Ununtu distro from the [Microsoft Store](https://www.microsoft.com/en-us/p/ubuntu/9nblggh4msv6) or with [command-line/script](https://docs.microsoft.com/en-us/windows/wsl/install-manual) on Powershell

### 2. Prepare OS

* Update OS packages: `$ sudo apt-get update && sudo apt-get upgrade`

### 3. Setup Ruby and gems

* Install Ruby: `$ sudo apt-get ruby`

Or,

*  Install Ruby Version Manager (RVM):

``` bash
$ gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3

$ \curl -sSL https://get.rvm.io | bash -s stable --ruby

$ source ~/.rvm/scripts/rvm
```

Installing Specific Ruby and Rails Versions:

``` bash
rvm install ruby_version
rvm list
rvm use ruby_version
```

* Install Bundler gem: `$ sudo gem install bundler`
* Place the `Gemfile` in the project folder and install gem: `$ bundle install`

### 4. Setup Node.js

* Install Node.js: `$sudo apt-get install nodejs`

You need to manually create a symlink `/usr/bin/node`. Shortcut for bash compatible shells:

``` bash
$ sudo ln -s `which nodejs` /usr/bin/node
```

Or if you use non-standard shells, just hardcode the path you find with which nodejs:

``` bash
$ sudo ln -s /usr/bin/nodejs /usr/bin/node
```

* Install Grunt command line tools: `sudo npm install -g grunt-cli`

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
