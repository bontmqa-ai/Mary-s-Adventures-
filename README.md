  - name: export game
    uses: firebelley/godot-export@v6.0.0
    with:
      godot_executable_download_url: https://github.com/godotengine/godot-builds/releases/download/4.4-stable/Godot_v4.4-stable_linux.x86_64.zip
      godot_export_templates_download_url: https://github.com/godotengine/godot-builds/releases/download/4.4-stable/Godot_v4.4-stable_export_templates.tpz
      relative_project_path: "./"
      archive_output: true
      # تأكد أن هذا الاسم يطابق بالضبط الاسم الذي اخترته في Godot (الخطوة 1)
      export_preset: "Android"

  - name: upload artifact
    uses: actions/upload-artifact@v4
    with:
      name: Sapphire-Hero-Android-Build
      path: /home/runner/.local/share/godot/archives/
