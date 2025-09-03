{
  lib,
  ...
}:
{
  programs.kitty = lib.mkForce {
    enable = true;
    settings = {
      confirm_os_window_close = 0;
      dynamic_background_opacity = true;
      enable_audio_bell = false;
      mouse_hide_wait = "-1.0";
      window_padding_width = 2;
      background_opacity = "0.7";
      background_blur = 7;
    };
    keybindings = {
      "ctrl+f" = '' launch --type=overlay zsh -c 'dir=$(find . -type d | fzf) && [ -n "$dir" ] && tmux new-session -c "$dir" -s "$(basename "$dir")"' '';
    };
  };
}
