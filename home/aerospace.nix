{ pkgs, ... }:

{
  programs.aerospace = {
    enable = true;
    launchd.enable = true;
    settings = {
      start-at-login = false;

      config-version = 2;
#      after-startup-command = [ "exec-and-forget borders active_color=0xff4ca0b3 inactive_color=0x00000000 width=10" ];

      workspace-to-monitor-force-assignment = {
        "1" = "main";
        "2" = "main";
        "3" = "main";
        "4" = "main";
        "5" = "main";
        "6" = "main";
        "7" = "main";
        "8" = "main";
        "9" = "main";
        "10" = "secondary";
      };

      gaps = {
        inner.horizontal = 0;
        inner.vertical = 0;
        outer.left = -2;
        outer.bottom = -3;
        outer.top = -2;
        outer.right = -2;
      };

      mode.main.binding = {
        # workspace switching
        ctrl-shift-cmd-1 = "workspace 1";
        ctrl-shift-cmd-2 = "workspace 2";
        ctrl-shift-cmd-3 = "workspace 3";
        ctrl-shift-cmd-4 = "workspace 4";
        ctrl-shift-cmd-5 = "workspace 5";
        ctrl-shift-cmd-6 = "workspace 6";
        ctrl-shift-cmd-7 = "workspace 7";
        ctrl-shift-cmd-8 = "workspace 8";
        ctrl-shift-cmd-9 = "workspace 9";
        ctrl-shift-cmd-0 = "workspace 10";

        # move node to workspace
        ctrl-shift-cmd-alt-1 = "move-node-to-workspace 1";
        ctrl-shift-cmd-alt-2 = "move-node-to-workspace 2";
        ctrl-shift-cmd-alt-3 = "move-node-to-workspace 3";
        ctrl-shift-cmd-alt-4 = "move-node-to-workspace 4";
        ctrl-shift-cmd-alt-5 = "move-node-to-workspace 5";
        ctrl-shift-cmd-alt-6 = "move-node-to-workspace 6";
        ctrl-shift-cmd-alt-7 = "move-node-to-workspace 7";
        ctrl-shift-cmd-alt-8 = "move-node-to-workspace 8";
        ctrl-shift-cmd-alt-9 = "move-node-to-workspace 9";
        ctrl-shift-cmd-alt-0 = "move-node-to-workspace 10";

        # focus
        ctrl-shift-cmd-left = "focus left";
        ctrl-shift-cmd-down = "focus down";
        ctrl-shift-cmd-up = "focus up";
        ctrl-shift-cmd-right = "focus right";

        # swap
        ctrl-shift-cmd-alt-left = "swap left";
        ctrl-shift-cmd-alt-right = "swap right";

        # tiling
        ctrl-shift-cmd-slash = "layout h_tiles v_tiles";
        ctrl-shift-cmd-comma = "layout tiles accordion";
        ctrl-shift-cmd-alt-space = "layout floating tiling";

        # apps
        ctrl-shift-cmd-e = "exec-and-forget open -a finder";
        ctrl-shift-cmd-enter = "exec-and-forget env AUTO_TMUX=1 open -n -a alacritty --args -o window.startup_mode=Fullscreen";
        ctrl-shift-cmd-f = "fullscreen";
        ctrl-shift-cmd-m = "exec-and-forget open -a element";
        ctrl-shift-cmd-r = "reload-config";
        ctrl-shift-cmd-s = "exec-and-forget open -a 'System Settings'";
        ctrl-shift-cmd-t = "exec-and-forget env AUTO_TMUX=1 open -a kitty";
        ctrl-shift-cmd-v = "exec-and-forget open -a vesktop";
        ctrl-shift-cmd-w = ''exec-and-forget sh -c "sleep 0.1 && open -a firefox"'';
      };
    };
  };
}
