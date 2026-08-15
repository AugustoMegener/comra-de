{ ... }:
{
  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [ "/home/kito/Pictures/Backgrounds/bg-1.png" ];
      wallpaper = [
        {
          monitor = "";
         path = "/home/kito/Pictures/Backgrounds/bg-1.png";
        }
      ];
      splash = false;
    };
  };
}
