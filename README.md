# Koggdal's Dotfiles

These are the dotfiles I'm using. Feel free to copy and use whatever you want :)

## Usage

### Installation

This assumes you already have oh-my-zsh installed into `~/.oh-my-zsh`.

Clone this repo:

```
git clone https://github.com/koggdal/dotfiles.git && cd dotfiles
```

Run the install command:

```
./install
```

### Updates

To update the files to the latest version on GitHub, run the update command:

```
./update
```

It will stash any local changes, pull down the latest commits and then run the install script.

If you prefer a slightly more manual process, handle your local changes and pull yourself,
then just run the install script again:

```
./install
```

### The install script

The install script will check for any conflicting dotfiles you might already have in your home folder. If it finds a file, it will move that to a backup folder specified in the output. If it finds a conflicting symlink, it will just remove the old symlink.

It will make symlinks to all the dotfiles in the repo (or actually all that are specified in the install script).

### Private settings

If you have things you want to keep private (aliases or something else), you have two files to help you with that. If the file `~/.extra` exists, it will be run at the end of each install or update. If the file `~/.extra-login` exists, it will be run at the end of each login (which is a good place to put aliases).

## Thanks

I would like to say thanks to all the people who have shared their dotfiles on the internet.
