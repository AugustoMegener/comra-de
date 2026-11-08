{ bolcshell }:
{ pkgs, ... }:
{
  services.greetd = {
    enable = true;
    settings.default_session = {
      user = "greeter";
      command = "${bolcshell.packages.${pkgs.stdenv.hostPlatform.system}.bolcshell-greeter}/bin/bolcshell-greeter";
    };
  };
}
