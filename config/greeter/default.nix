{ pkgs, inputs, ... }:
{
  services.greetd = { 
    enable = true;
    settings.default_session = {
      user = "greeter";
      command = "${inputs.bolcshell.packages.${pkgs.system}.bolcshell-greeter}/bin/bolcshell-greeter";
    };
  };
}
