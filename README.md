# Mac os from-zero-setup repo

## Usage

1. Allow Mac Os to use Git:

```sh
xcode-select --install
```

2. Run install script from remote repo:

```sh
mkdir -p ~/Developer && cd "$_"
git clone https://github.com/mlnchk/dotfiles.git
cd dotfiles
./install
```

3. Login to 1Password, Raycast, Arc, Cursor, etc.

## TODO

- change lang to caps lock
- configure ssh key for github
