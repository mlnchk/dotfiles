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

5. Go to Settings -> Keyboard -> Keyboard Shortcuts. Disable shortcuts for Spotlight and Input Source.

6. Go to Settings -> Keyboard -> Text Inputs -> Edit. Enable Caps Lock to switch Input Source.

7. Go to Settings -> Sound -> Sound Effects. Set Alert Volume to 0%.

8. Go to Settings -> Internet Accounts. Log In to personal and working accounts.

9. Add SSH key for github:

```sh
ssh-keygen -t ed25519 -C "your_email@example.com"
pbcopy < ~/.ssh/id_ed25519.pub
```

Go to [GitHub Settings -> SSH and GPG keys -> New SSH key](https://github.com/settings/keys).

## TODO

- change lang to caps lock automatically
- configure ssh key for github
