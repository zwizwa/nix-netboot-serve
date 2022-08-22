with import <nixpkgs> {};
mkShell {
  buildInputs = [
    cargo gcc pkg-config openssl

    # rustup gcc qemu gcc rust-cbindgen probe-run bintools-unwrapped
    # pkg-config udev rust-analyzer gcc-arm-embedded
    # openssl

    # keep this line if you use bash
    bashInteractive
  ];
}
