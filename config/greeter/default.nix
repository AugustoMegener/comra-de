{ bolcshell }:
{ pkgs, inputs, ... }:
{
  users.users.greeter = {
    home = "/var/lib/greeter";
    createHome = true;
  };

  services.greetd = {
    enable = true;
    settings.default_session = {
      user = "greeter";
      command = "${pkgs.systemd}/bin/systemd-cat -t greeter ${pkgs.labwc}/bin/labwc --session ${inputs.bolcshell.packages.${pkgs.stdenv.hostPlatform.system}.bolcshell-greeter}/bin/bolcshell-greeter";
    };
  };
}
