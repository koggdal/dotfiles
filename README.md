# Koggdal's Dotfiles

These are the dotfiles I'm using. Feel free to copy and use whatever you want :)

## Usage

### Installation

Clone this repo:

```
git clone https://github.com/koggdal/dotfiles.git
```

Run the install command:

```
cd dotfiles && chmod +x install && ./install
```

### Updates

To install any new files (that might have appeared after a git pull), just run the install script again:

```
./install
```

### The install script

The install script will check for any conflicting dotfiles you might already have in your home folder. If it finds a file, it will move that to a backup folder specified in the output. If it finds a conflicting symlink, it will just remove the old symlink.

It will make symlinks to all the dotfiles in the repo (or actually all that are specified in the install script).

## Thanks

I would like to say thanks to all the people who have shared their dotfiles on the internet.
