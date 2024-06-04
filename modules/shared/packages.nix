{ pkgs }:

with pkgs; [
  # General packages for development and system management
  alacritty
  aspell
  aspellDicts.en
  bash-completion
  bat
  btop
  coreutils
  killall
  kitty
#  kitty-themes
#  kitty-img
  neofetch
  openssh
  sqlite
  vscode
  wget
  yubikey-manager
  zip

  # general utilities
  

  # Encryption and security tools
  age
  age-plugin-yubikey
  gnupg
  libfido2

  # Cloud-related tools and SDKs
  docker
  docker-compose

  # Media-related packages
  emacs-all-the-icons-fonts
  dejavu_fonts
  ffmpeg
  fd
  font-awesome
  hack-font
  noto-fonts
  noto-fonts-emoji
  meslo-lgs-nf

  # Node.js development tools
  nodePackages.npm # globally install npm
  nodePackages.prettier
  nodejs

  # Text and terminal utilities
  colorls
  fzf
  htop
  hunspell
  iftop
  jetbrains-mono
  jq
  poppler
  ranger
  rename
  ripgrep
  tree
  tmux
  unrar
  unzip
  wireguard-tools
  zoxide
  zsh-powerlevel10k

  # Python packages
  python39
  python39Packages.virtualenv # globally install virtualenv
]
