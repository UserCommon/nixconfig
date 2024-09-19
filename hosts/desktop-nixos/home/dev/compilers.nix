{ pkgs, ... }: {
  # Declared all compilers and interpreters
  # and their settings
  home.packages = with pkgs; [
    rustup

    clang
    #gcc
    zig

    ghc
    ocaml
    ocamlPackages.utop
    ocamlPackages.ocp-indent
    ocamlPackages.menhir
    opam
    dune_3

    nodejs_20
    yarn
    python3

    lldb
  ];
}
