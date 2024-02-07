{
  description = "Resume editing and building environment";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }: {
    # Define an environment for editing your resume with LaTeX
    devShell = {
      packages = [
        nixpkgs.texlive.combined.scheme-full
      ];
    };

    # Define a derivation to build your resume
    resume = {
      outputs = [ "out" ];
      inputDrvs = [ nixpkgs.texlive.combined.scheme-full ];
      builder = ./build.sh;
    };
  };
}

