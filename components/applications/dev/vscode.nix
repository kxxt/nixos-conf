{ pkgs, ... }:
{
  packages = with pkgs; [
    rnix-lsp # Nix LSP
    (vscode-with-extensions.override {
      vscodeExtensions = with vscode-extensions; [
        ms-python.python
        ms-vscode-remote.remote-ssh
        jnoortheen.nix-ide
      ];
    })
  ];
}
