{ config, ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      tree = "ls --tree";
      cls = "clear";
      ".." = "cd ..";
      rm = "rm -fr";
    };

    initContent = ''
      fzf-tmux-session() {
        local dir session_name
        dir=$(find . -type d | fzf)

        if [ -n "$dir" ]; then
          session_name="$(basename "$dir")-$(date +%s)"

          # Execute tmux in a way that can take over the terminal
          zle push-line # Save current command line
          BUFFER="tmux new-session -c '$dir' -s '$session_name'"
          zle accept-line # Execute the command
        fi
      }

      zle -N fzf-tmux-session
      bindkey '^F' fzf-tmux-session
    '';

    history.size = 10000;
    history.path = "${config.xdg.dataHome}/zsh/history";
  };
}
