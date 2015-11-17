# Config

OS: Ubuntu 14.04 LTS (Trusty Tahr)

**Config** is a basic checklist I follow to set up a new Ubuntu's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

## Contents

| File | Description |
| --- | --- |
| `.bashrc` | Custom GNOME Terminal app prompt and echos the currently checked out Git branch. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | The ignore file that I use everywhere. |
| `.gitattributes` | Dealing with line endings. |
| `base16-ocean-theme/` | The collection of Base16 Ocean theme for Terminal and text editor. |

## Checklist

### 1. Prepare OS

* Update OS packages: `$ sudo apt-get update && sudo apt-get upgrade`

### 2. Setup Ruby and gems

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

### 3. Setup Node.js

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

### 3. Download Atom

* Install Atom: `$ sudo apt-get atom`

### 4. Tweaks and Base16 Ocean theme

* Load `.bashrc` and `.gitconfig` into the global directory.
* **Base16 Ocean dark theme for GNOME Terminal**: For installation just execute desired command below. Be careful, terminal will be closed after install.

``` bash
wget https://raw.githubusercontent.com/MilanAryal/config/base16-ocean-theme/gnome-terminal/base16-ocean.dark.sh && . base16-ocean.dark.sh
```

* Check **unlimited scrolling on GNOME Terminal**: Goto Profile Preferences > Scrolling > Scrollback > Check Unlimited.

* Install Ocean dark theme for **gedit**, and **Atom**.

* Prevent gedit from creating backup files with the `~` (tilde) suffix: Turn off these automatic backups by going into **Edit > Preferences** and unchecking the **Create backup copies of files before saving** option under the **Editor** tab.

### 5. Blocking unwanted connections with a hosts file

* Add the unwanted connections lists on hosts file `/etc/hosts` and flush DNS. You need root permission to do it, `$ sudo gedit /etc/hosts`.

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

If you want to use this configuration on your machine, **please be sure to change your `.gitconfig` name and email address!**

[![License](https://img.shields.io/github/license/MilanAryal/config.svg?branch=master)](https://github.com/MilanAryal/config/blob/master/LICENSE)
