{ pkgs, lib, ... }:
let
  isDarwin = pkgs.stdenv.isDarwin;

  streamToggle = if isDarwin then ''
    stream() {
      if pgrep -x sunshine > /dev/null 2>&1; then
        pkill -x sunshine
        echo "Sunshine stopped"
      else
        echo "Starting Sunshine..."
        sunshine > /dev/null 2>&1 &
        disown
        echo "Sunshine running — web UI at https://localhost:47990"
      fi
    }
  '' else ''
    stream() {
      if systemctl --user is-active --quiet sunshine; then
        systemctl --user stop sunshine
        echo "Sunshine stopped"
      else
        systemctl --user start sunshine
        echo "Sunshine started — web UI at https://localhost:47990"
      fi
    }
  '';
in
{
  programs.zsh.initContent = lib.mkOrder 600 streamToggle;
}
