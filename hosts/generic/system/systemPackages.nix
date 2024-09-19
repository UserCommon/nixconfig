{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    nekoray
    vim
    helix
    git
    curl
    wget

    jdk8
    jdk22
    jdk11
    jdk17
  ];
}
