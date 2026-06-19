{
  stdenv,
  glib,
  gobject-introspection,
  json-glib,
  meson,
  ninja,
  pkg-config,
  vala,
  astal,
}:
stdenv.mkDerivation {
  name = "astal-niri";
  src = ../src;

  nativeBuildInputs = [
    gobject-introspection
    meson
    ninja
    pkg-config
    vala
  ];

  propagatedBuildInputs = [
    glib
    json-glib
  ];

  postUnpack = ''
    cp --remove-destination ${astal.source}/lib/gir.py gir.py
  '';
}
