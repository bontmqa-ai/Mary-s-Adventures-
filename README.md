name: "Final-Build"
on: [push, workflow_dispatch]

jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Godot Android Export
        uses: simon-p-r/godot-4-export-artifact-action@v1.1.2
        with:
          godot-version: "4.4"
          export-preset: "Android" # تأكد أن هذا الاسم يطابق الموجود في ملف الـ cfg
          export-debug: true
