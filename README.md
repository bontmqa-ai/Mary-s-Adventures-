name: "Export Game"
on: [push]

jobs:
  export-android:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Godot
        uses: firebelley/godot-export@v6.0.0
        with:
          godot_executable_download_url: https://github.com/godotengine/godot-builds/releases/download/4.4-stable/Godot_v4.4-stable_linux.x86_64.zip
          godot_export_templates_download_url: https://github.com/godotengine/godot-builds/releases/download/4.4-stable/Godot_v4.4-stable_export_templates.tpz
          relative_project_path: "./"
          export_preset: "Android"
          archive_output: true

      - name: Upload APK
        uses: actions/upload-artifact@v4
        with:
          name: Sapphire-Hero-Ready
          path: /home/runner/.local/share/godot/archives/
