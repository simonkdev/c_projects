{
  description = "A very basic flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  let
    nixpkgs-esp-dev = builtins.fetchGit {
      url = "https://github.com/mirrexagon/nixpkgs-esp-dev.git";

      # Optionally pin to a specific commit of `nixpkgs-esp-dev`.
      # rev = "<commit hash>";
    };

    pkgs = import <nixpkgs> { overlays = [ (import "${nixpkgs-esp-dev}/overlay.nix") ]; };
  in

  outputs = { self, nixpkgs }: {
    # A standalone shell definition that downloads and uses packages from `nixpkgs-esp-dev` automatically.


pkgs.mkShell {
  name = "esp-project";

  buildInputs = with pkgs; [
    esp-idf-full
  ];
}

  };
}
