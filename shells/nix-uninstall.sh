rm -rf /etc/profile/nix.sh /etc/nix /nix ~root/.nix-profile ~root/.nix-defexpr ~root/.nix-channels ~/.nix-profile ~/.nix-defexpr ~/.nix-channels

if [[ -f /etc/bashrc.backup-before-nix && -f /etc/bashrc ]]
  /bin/mv /etc/bashrc.backup-before-nix /etc/bashrc
fi

[[ -f /etc/bash.bashrc.backup-before-nix && -f /etc/bash.bashrc ]] && \
  /bin/mv /etc/bash.bashrc.backup-before-nix /etc/bash.bashrc

[[ -f /etc/zshrc.backup-before-nix && -f /etc/zshrc ]] && \
  /bin/mv /etc/zshrc.backup-before-nix /etc/zshrc


# If you are on Linux with systemd, you will need to run:
systemctl stop nix-daemon.socket
systemctl stop nix-daemon.service
systemctl disable nix-daemon.socket
systemctl disable nix-daemon.service
systemctl daemon-reload

