name: "Ultra-Build-Success"
on: [push, workflow_dispatch]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Code
        uses: actions/checkout@v4
        with:
          lfs: true # حل مشكلة الملفات الكبيرة

      - name: Godot Android Export
        uses: firebelley/godot-export@v6.0.0
        with:
          godot_executable_download_url: https://github.com/godotengine/godot-builds/releases/download/4.4-stable/Godot_v4.4-stable_linux.x86_64.zip
          godot_export_templates_download_url: https://github.com/godotengine/godot-builds/releases/download/4.4-stable/Godot_v4.4-stable_export_templates.tpz
          # التعديل الجوهري: المسار للمجلد الذي فيه اللعبة فعلياً
          relative_project_path: "MariamGame"
          export_preset: "Android"
          archive_output: true

      - name: Upload Result
        uses: actions/upload-artifact@v4
        with:
          name: Sapphire-Hero-Final
          path: /home/runner/.local/share/godot/archives/
