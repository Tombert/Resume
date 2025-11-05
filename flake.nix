{
    description = "Resume editing and building environment";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        flake-utils.url = "github:numtide/flake-utils";
    };

    outputs = { self, nixpkgs, flake-utils}: 
        with flake-utils.lib; eachSystem allSystems (system:
            let
                pkgs = import nixpkgs {
                    inherit system;
                };
            in rec
                { 
                    devShell = pkgs.mkShell {
                        buildInputs = [
                            pkgs.typst
                        ];
                    };

                    defaultPackage = pkgs.stdenv.mkDerivation rec {
                                name = "Resume Build";
                                src = self; 
                                phases = ["unpackPhase" "buildPhase" "installPhase"];
                                preBuild = ''
                                    echo "Current directory:"
                                    pwd
                                    echo "Listing files:"
                                    ls
                                    exit 64
                                '';
                                buildInputs = [
				    pkgs.typst
                                ];

                                buildPhase = ''
				   typst compile template.typ --font-path fonts
                                '';

                                installPhase = ''
                                    mkdir -p $out
                                    cp template.pdf $out/resume2.pdf
                                '';
                     };
         });
}
