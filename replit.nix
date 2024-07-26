{ pkgs }: {
    deps = [
      pkgs.nodejs
      pkgs.go
        pkgs.hugo
    ];
}