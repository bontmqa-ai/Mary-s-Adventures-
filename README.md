name: Build Android APK
on:
  push:
    branches: [ main ]
jobs:
  build-android:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v4

      - name: Setup Godot 4.4
        uses: firebelts/godot-export@v5.2.0
        with:
          godot_executable_download_url: https://github.com/godotengine/godot-builds/releases/download/4.4-stable/Godot_v4.4-stable_linux.x86_64.zip
          godot_export_templates_download_url: https://github.com/godotengine/godot-builds/releases/download/4.4-stable/Godot_v4.4-stable_export_templates.tpz
          relative_project_path: ./
          archive_output: true

      - name: Upload APK
        uses: actions/upload-artifact@v4
        with:
          name: Sapphire-Hero-APK
          path: /home/runner/.local/share/godot/archives/
