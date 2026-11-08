{ bolcshell }:
{ pkgs, inputs, ... }:
{
  services.greetd = {
    enable = true;
    settings.default_session = {
      user = "greeter";
      command = "${pkgs.labwc}/bin/labwc --session ${inputs.bolcshell.packages.${pkgs.stdenv.hostPlatform.system}.bolcshell-greeter}/bin/bolcshell-greeter";
    };
  };
}
