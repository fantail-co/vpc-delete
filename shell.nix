{ pkgs ? import <nixpkgs> {} }:
let
  python-with-my-packages = pkgs.python3.withPackages (p: with p; [
    boto3
    botocore
  ]);
in
python-with-my-packages.env # replacement for pkgs.mkShell
