{ config, pkgs, agenix, secrets, ... }:

let user = "dustin"; in
{
  
  age.identityPaths = [ 
    "/Users/${user}/.ssh/id_ed25519"
  ];

  age.secrets."github-ssh-key" = {
    symlink = true;
    path = "/Users/${user}/.ssh/id_github";
    file =  "${secrets}/github-ssh-key.age";
    mode = "600";
    owner = "${user}";
    group = "staff";
  };

  age.secrets."syncthing-cert" = {
    symlink = true;
    path = "/Users/${user}/Library/Application Support/Syncthing/cert.pem";
    file =  "${secrets}/syncthing-cert.age";
    mode = "644";
    owner = "${user}";
    group = "staff";
  };

  age.secrets."syncthing-key" = {
    symlink = true;
    path = "/Users/${user}/Library/Application Support/Syncthing/key.pem";
    file =  "${secrets}/syncthing-key.age";
    mode = "600";
    owner = "${user}";
    group = "staff";
  };

}