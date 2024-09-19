{pkgs, ...}:

{
  programs.git = {
    enable = true;
    userName = "usercommon";
    userEmail = "kirilnenashev@gmail.com";
    extraConfig = {
      credential.helper = "${
        pkgs.git.override { withLibsecret = true; }
      }/bin/git-credential-libsecret";
    };
  };
}