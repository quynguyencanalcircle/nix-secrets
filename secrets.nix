let
  # get user's ssh public key by command:
  #     cat ~/.ssh/id_ed25519.pub
  # if you do not have one, you can generate it by command:
  #     ssh-keygen -t ed25519
  pq = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFPhdMcUmm2RFG8MYJh7Y9Jgr4DeY5ALfv6ROnjuuavC pq@pq-xps157590";
  users = [ pq ];

  # get system's ssh public key by command:
  #    cat /etc/ssh/ssh_host_ed25519_key.pub
  nixos = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIE01ZI5+WFPHsxdYcravHFSFCxQPRRd//Ug8TfIh6Vj+ root@nixos";
  systems = [ nixos ];
in
{
  # "./xxx.age".publicKeys = users ++ systems;
  "wg-business.conf.age".publicKeys = users;
  "smb-credentials.age".publicKeys = users;
  "alias-for-work.nushell.age".publicKeys = users;
  "alias-for-work.bash.age".publicKeys = users;
  "nix-access-tokens.age".publicKeys = users;
}