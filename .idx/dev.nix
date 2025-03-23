{ pkgs, ... }: {
  channel = "stable-24.05";

  packages = [
    pkgs.flutter
    pkgs.dart
    pkgs.jdk17
    pkgs.unzip
  ];

  idx = {
    extensions = [];

    previews = {
      enable = true;
      previews = {
        web = {
          command = [
            "flutter"
            "run"
            "--machine"
            "-d"
            "web-server"
            "--web-hostname=0.0.0.0"
            "--web-port=$PORT"
          ];
          manager = "flutter";
        };
        android = {
          command = [
            "flutter"
            "run"
            "--machine"
            "-d"
            "android"
          ];
          manager = "flutter";
        };
      };
    };

    workspace = {
      onCreate = {
        flutter-upgrade = "flutter upgrade";
        flutter-pub-get = "flutter pub get";
      };
    };
  };
}
