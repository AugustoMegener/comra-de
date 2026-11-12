{ bolcshell }:
{ pkgs, inputs, ... }:
{
  users.users.greeter = {
    home = "/var/lib/greeter";
    createHome = true;
  };
  console.colors = [
    "26211c" "aa0000" "00aa00" "aa5500"
    "0000aa" "aa00aa" "00aaaa" "aaaaaa"
    "555555" "ff5555" "55ff55" "ffff55"
    "5555ff" "ff55ff" "55ffff" "ffffff"
  ];
  services.greetd = {
    enable = true;
    settings.default_session = {
      user = "greeter";
      command = "${pkgs.systemd}/bin/systemd-cat -t greeter ${pkgs.labwc}/bin/labwc --session ${inputs.bolcshell.packages.${pkgs.stdenv.hostPlatform.system}.bolcshell-greeter}/bin/bolcshell-greeter";
    };
  };
}
