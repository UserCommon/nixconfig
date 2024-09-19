{...}:
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = {
    users.usercommon = {
      isNormalUser = true;
      description = "usercommon";
      extraGroups = [ "networkmanager" "wheel" "video" ];
   };
  };
}
  

