{
  description = "flake for pikuma game engine project";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.default = pkgs.mkShell {
        packages = with pkgs; [
	  # The buildEnv trick here is a way of ensuring that
	  # all the man outputs etc are included in the devshell
	  (buildEnv {
	    name = "devShell";
	    paths = [
              pkg-config
              gcc
              SDL2
              SDL2_image
              SDL2_ttf
              SDL2_mixer
              lua5_3
            ];
	  })
        ];
      };
    };
}
