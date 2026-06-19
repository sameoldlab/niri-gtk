{
  mkShell,
  callPackage,
  mesonlsp,
  vala-language-server,
  uncrustify,
}:
mkShell {
  inputsFrom = [ (callPackage ./package.nix { }) ];
  packages = [
    mesonlsp
    vala-language-server
    uncrustify
  ];
}
