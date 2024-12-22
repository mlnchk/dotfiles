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

3. Log out from the system to apply changes.

4. Login to 1Password first, then browser, then Raycast, then everething else.

## TODO

- change lang to caps lock
- configure ssh key for github
