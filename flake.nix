{
    description = "Resume editing and building environment";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        flake-utils.url = "github:numtide/flake-utils";
    };

    outputs = { self, nixpkgs, flake-utils, ...}: 
        flake-utils.lib.eachDefaultSystem(system:
            let
                pkgs = import nixpkgs {
                    inherit system;
                };
            in rec
                { 
                    devShell = pkgs.mkShell {
                        buildInputs = [
                            pkgs.texlive.combined.scheme-full
                        ];
                    };

                    defaultPackage = pkgs.stdenv.mkDerivation {
                                name = "Resume Build";
                                src = self; 
                                phases = ["buildPhase" "installPhase"];
                                buildInputs = [
                                    pkgs.texlive.combined.scheme-full
                                ];

                                buildPhase = ''
                                    pdflatex ./resume.tex
                                '';

                                installPhase = ''
                                    mkdir -p $out
                                    cp resume.pdf $out
                                '';
                     };
         });
}
