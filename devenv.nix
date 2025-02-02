{ pkgs, lib, config, inputs, ... }:

{
  packages = [ pkgs.git pkgs.bash ];

  languages.python = {
    enable = true;
    venv = {
      enable = true;
      requirements = ./requirements.txt;
    };
  };
  scripts.eval-all.exec = ''
    ./run.sh
  '';
  scripts.run-all.exec = "echo {1..32} | xargs -n1 -P32 run.sh";
}
