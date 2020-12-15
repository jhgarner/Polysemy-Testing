let
  pkgs = import <nixpkgs> {};
  dhall = import (fetchTarball {
    url = https://hydra.dhall-lang.org/jobset/dhall-haskell/master/channel/latest/nixexprs.tar.bz2;
    sha256 = "01ii87xcfplg2ppz3pqqi61b9zvlynr3d6c9xjmlic49airr3vc7";
  }) {};
  ghc = pkgs.haskell.compiler.ghcHEAD.overrideAttrs (old: {
    src = pkgs.fetchgit {
      # url = https://gitlab.com;
      url = https://gitlab.haskell.org/ghc/ghc.git;
      rev = "7137e3da1b91d46882881435b5cab9bc8eb66fa5";
      sha256 = "0279x8f2x14d01amkanrd93287qz3cs70l8xq38cmnrwsk2qi2pm";
    };
  });
in
pkgs.mkShell {
  buildInputs = [
    pkgs.stack
    pkgs.dhall
    ghc
    dhall.linux-dhall-lsp-server
    pkgs.haskellPackages.ghcide
  ];
}
