{
  programs.waybar = {
    enable = true;
    style = ./style.css;
    settings = {
      mainBar = {
        layer = "top";
        position = "left";
        width = 30;
        margin = "5 5 5 5";
        modules-left = [
          "custom/notification"
          "clock"
        ];
        "custom/notification" = {
          tooltip = false;
          format = "{icon}";
          format-icons = {
            notification = "󱅫";
            none = "󰂚";
            dnd-notification = "󰂛";
            dnd-none = "󰂛";
            inhibited-notification = "󱅫";
            inhibited-none = "󰂚";
            dnd-inhibited-notification = "󰂛";
            dnd-inhibited-none = "󰂛";
          };
          return-type = "json";
          exec-if = "which swaync-client";
          exec = "swaync-client -swb";
          on-click = "swaync-client -t -sw";
          on-click-right = "swaync-client -d -sw";
          escape = true;
        };
        "clock" = {
          interval = 1;
          format-alt = " 󰥔\n{:%H\n%M}";
          format = " 󰣆\n{:%d\n%m\n%y\n 󰥔\n%I\n%M\n%S}";
          tooltip = true;
          tooltip-format = "{calendar}";
          calendar = {
            mode = "year";
            mode-mon-col = 3;
            format = {
              today = "<span color='#a6e3a1'>{}</span>";
            };
          };
        };
        modules-center = [ "hyprland/workspaces" ];
        "hyprland/workspaces" = {
          disable-scroll = true;
          show-special = true;
          special-visible-only = true;
          all-outputs = false;
          format = "{icon}";
          format-icons = {
            "1" = "";
            "2" = "󰖟";
            "3" = "";
            "4" = "";
            "5" = "󱜠";
          };

          persistent-workspaces = {
            "*" = 5;
          };
        };
        modules-right = [
          "tray"
          "pulseaudio/slider"
          "pulseaudio#audio"
          "mpris"
          "bluetooth"
          "battery"
        ];
        "tray" = {
          icon-size = 14;
          spacing = 8;
          show-passive-items = true;
        };
        "pulseaudio/slider" = {
          min = 0;
          max = 100;
          orientation = "vertical";
        };
        "pulseaudio#audio" = {
          format = "{icon}";
          format-bluetooth = "󰂯\n{icon}";
          format-bluetooth-muted = "󰂯\n󰖁";
          format-muted = "󰖁";
          format-icons = {
            headphone = "󰋋";
            hands-free = "󰋋";
            headset = "󰋋";
            phone = "";
            portable = "";
            car = "";
            default = [
              "󰕿"
              "󰖀"
              "󰕾"
            ];
          };
          on-click = "pactl set-sink-mute @DEFAULT_SINK@ toggle";
          on-scroll-up = "pactl set-sink-volume @DEFAULT_SINK@ +1%";
          on-scroll-down = "pactl set-sink-volume @DEFAULT_SINK@ -1%";
          tooltip = true;
          tooltip-format = "{icon} {desc} {volume}%";
        };
        "pulseaudio#microphone" = {
          format = "{format_source}";
          # format-source = "󰍬 {volume}%";
          format-source = "󰍬";
          # format-source-muted = "󰍭 {volume}%";
          format-source-muted = "󰍭";
          on-click = "pactl set-source-mute @DEFAULT_SOURCE@ toggle";
          on-scroll-up = "pactl set-source-volume @DEFAULT_SOURCE@ +1%";
          on-scroll-down = "pactl set-source-volume @DEFAULT_SOURCE@ -1%";
          max-volume = 100;
          tooltip = true;
          tooltip-format = "{icon} {desc} {volume}%";
        };
        "mpris" = {
          format = "{player_icon}\n{status_icon}";
          format-paused = "{player_icon}\n{status_icon}";
          status-icons = {
            playing = "󰏤";
            paused = "󰐊";
            stopped = "󰐊";
          };
          tooltip-format = "{player} - {artist} - {title}";
        };
        bluetooth = {
          format-disabled = "";
          format-off = "";
          format-on = "󰂯";
          format-connected = "󰂯";
          format-connected-battery = "󰂯";
          tooltip-format-connected = "{device_enumerate}";
          tooltip-format-enumerate-connected = "{device_alias} 󰂄{device_battery_percentage}% {device_address}";
          on-click = "blueman-manager";
          tooltip = true;
        };
      };
    };
  };
}
