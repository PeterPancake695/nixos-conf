{
  wayland.windowManager.hyprland = {
    enable = true;
    systemd.enable = true;

    settings = {
      source = [
        "/etc/hypr/hyprland.conf.d/monitors.conf"
      ];

      env = [
        # Hint Electron apps to use Wayland
        "NIXOS_OZONE_WL,1"
        "XDG_CURRENT_DESKTOP,Hyprland"
        "XDG_SESSION_TYPE,wayland"
        "XDG_SESSION_DESKTOP,Hyprland"
        "QT_QPA_PLATFORM,wayland"
        "XDG_SCREENSHOTS_DIR,$HOME/screens"
      ];

      "$mainMod" = "SUPER";
      "$terminal" = "kitty";

      exec-once = [
        "nm-applet"
        "emote"
        "waybar"
      ];

      general = {
        gaps_in = 2;
        gaps_out = 2;

        border_size = 2;
        "col.active_border" = "rgba(8839ef80) rgba(ea76cb80) 45deg";
        "col.inactive_border" = "rgba(31324480)";

        resize_on_border = true;

        allow_tearing = false;
        layout = "master";
      };

      decoration = {
        rounding = 5;

        active_opacity = 1.0;
        inactive_opacity = 1.0;

        shadow.enabled = false;
      };

      animations = {
        enabled = false;
      };

      input = {
        kb_layout = "us";
        kb_options = "grp:caps_toggle";

        follow_mouse = 1;
        sensitivity = 0;
        touchpad = {
          natural_scroll = false;
        };
      };

      gestures = {
        workspace_swipe = true;
        workspace_swipe_invert = false;
        workspace_swipe_forever = true;
      };

      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      master = {
        new_status = "slave";
        new_on_top = true;
        mfact = 0.5;
      };

      misc = {
        force_default_wallpaper = 0;
        disable_hyprland_logo = true;
      };
    };
  };
}
