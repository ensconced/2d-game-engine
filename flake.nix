{
  description = "flake for pikuma game engine project";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.default = pkgs.mkShell {
        nativeBuildInputs = [
	  pkgs.gcc
	  pkgs.pkg-config
	];
	buildInputs = [
	  pkgs.SDL2
	  pkgs.SDL2_image
	  pkgs.SDL2_ttf
	  pkgs.SDL2_mixer
	  pkgs.lua5_3
	];
      };
    };
}
