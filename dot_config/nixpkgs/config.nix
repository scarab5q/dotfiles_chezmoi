let
  moz_overlay = import (builtins.fetchTarball
    "https://github.com/mozilla/nixpkgs-mozilla/archive/master.tar.gz");
  pkgs = import <nixpkgs> {
    overlays = [ moz_overlay ];
    config = { allowUnfree = true; };
  };
  nixos1909 = import (fetchTarball
    "https://github.com/NixOS/nixpkgs/archive/release-19.09.tar.gz") {
      config = { allowUnfree = true; };
    };

in let
  mypython = pkgs.python3;
  ppkgs = mypython.pkgs;
  # vscodeAndExtensions = (pkgs.vscode-with-extensions [ ]
  #   ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [{
  #     name = "code-runner";
  #     publisher = "formulahendry";
  #     version = "0.6.33";
  #     sha256 = "166ia73vrcl5c9hm4q1a73qdn56m0jc7flfsk5p5q41na9f10lb0";
  #   }]);

  my-python-packages = pp:
    with pp; [
      ipython
      # jupyter_console
      # jrnl
      # jupyter
      # qtconsole
      pynvim
      matplotlib
      numpy
      # tensorflow
      pandas
      # pytorchWithoutCuda
      # scikitimage
      # torchvision

      # yubikey-manager
      scikitimage
      # tensorflow

      # neovim-remote

      # stuff for coc.nvim
      jedi
      setuptools
      mypy # syntax
      pylama # syntax
      black # formatting
      isort # sorting imports
      rope # refactoring

    ];

  python-stuff = (mypython.withPackages (my-python-packages)).override
    (args: { ignoreCollisions = true; });
in {
  allowUnfree = true;
  packageOverrides = pkgs:
    with pkgs; {
      myPackages = pkgs.buildEnv {
        name = "myPackages";
        ignoreCollisions = true;
        paths = [
          racket
          # vscodeAndExtensions

          # Ocaml
          ocaml
          ocamlPackages.findlib
          ocamlPackages.utop
          ocamlPackages.base

          # clojure
          clojure
          clojure-lsp
          leiningen

          # go
          go
          gotools
          gopls
          gogetdoc
          dep

          # js
          nodejs-12_x
          nodejs
          yarn
          nodePackages.create-react-app

          # C/C++
          clang
          ccls
          cmake

          # zig
          zig

          shfmt
          gtop

          # kakoune
          kakoune
          jq # needed for completion

          # python
          pipenv
          python-stuff

          # cli utils
          light
          pavucontrol
          htop
          git-hub
          nnn
          direnv
          feh
          sd
          up
          trash-cli
          entr
          exa
          lf
          killall
          spotify-tui

          # wm stuff
          rofi-unwrapped
          rofi
          lemonbar
          xorg.libX11
          libdbusmenu-glib

          acpi
          anki
          aria2
          bear
          dunst
          rustup
          godot
          libreoffice
          jrnl
          tree
          networkmanagerapplet
          ntfs3g
          # qutebrowser
          ripgrep
          rtorrent
          taskwarrior
          todo-txt-cli
          transmission
          transmission-gtk
          tectonic
          qbittorrent
          zathura
          joplin-desktop
          nixpkgs-fmt
          jupyter
          emscripten
          # qt5.full
          asciinema
          ffcast
          # xorg.xwininfo
          # xrectsel
          # nixpkgs dependency management
          niv
          # neovim-remote
          # cargo
          # rustc
          figlet
          unzip
        ];
        pathsToLink = [ "/share/man" "/share/doc" "/bin" "/etc" ];
        extraOutputsToInstall = [ "man" "doc" ];
      };
    };
}
