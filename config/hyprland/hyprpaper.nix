{ ... }:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "/home/kito/Pictures/Backgrounds/bg-1.png" ];
      wallpaper = [
        {
         path = "/home/kito/Pictures/Backgrounds/bg-1.png";
        }
      ];
      splash = false;
    };
  };
}
