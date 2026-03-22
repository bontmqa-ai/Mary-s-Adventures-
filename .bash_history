pkg install git gh openjdk-17-headless
termux-change-repo
pkg install openjdk-17
pkg install tur-repo
pkg install git gh
pkg install git gh openjdk-17-headless
termux-setup-storage
y
termux-setup-storage
mkdir MariamProject
cd MariamProject
exit
mkdir MariamProject
cd MariamProject
exit
termux-setup-storage
mkdir MariamProject
cd MariamProject
cp -r /sdcard/Documents/A/sapphire-hero-rewritten/* .
exit
cp 
cp Documents
cd ~
cd Documents
cd
termux-setup-storage
pkg update && pkg upgrade
pkg install wget git openjdk-17 python nodejs -y
# تحميل نسخة جودوت (تأكد من اختيار نسخة Linux 64-bit)
wget https://github.com/godotengine/godot/releases/download/4.4-stable/Godot_v4.4-stable_linux.x86_64.zip
unzip Godot_v4.4-stable_linux.x86_64.zip
mv Godot_v4.4-stable_linux.x86_64 godot
chmod +x godot
cd ~7vV a
./godot --headless --export-release "Android" project.apk
rm godot
exit
termux-setup-storage
ls
cp Documents
exit
termux-setup-storage
y
termux-setup-storage
pkg update && pkg upgrade -y
y
pkg install git -y
cd ~/storage/shared/Documents/A/sapphire-hero-rewritten
git init
git add .
git commit -m "النسخة الأساسية من مشروع البطل"
pkg install gh -y
y
gh auth login
gh repo create sapphire-hero --private --source=. --remote=origin --push
git init
git add .
git commit -m "بداية مشروع مغامرات مريم"
gh repo create sapphire-hero --private --source=. --remote=origin --push
mkdir -p .github/workflows
cat <<EOF > .github/workflows/main.yml
name: Build Android APK
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - name: Godot Android Export
        uses: firebelley/godot-export@v5.2.1
        with:
          godot_executable_download_url: https://github.com/godotengine/godot/releases/download/4.4-stable/Godot_v4.4-stable_linux_x86_64.zip
          godot_export_templates_download_url: https://github.com/godotengine/godot/releases/download/4.4-stable/Godot_v4.4-stable_export_templates.tpz
          relative_project_path: ./
          archive_output: true
EOF

git add .
git commit -m "تفعيل نظام بناء APK"
git push origin master
gh repo create sapphire-hero --private --source=. --remote=origin --push
git config --global --add safe.directory /storage/emulated/0/Documents/A/sapphire-hero-rewritten
git init
git add .
git commit -m "إصلاح الخطأ وبداية المشروع"
git commit -m "بداية مشروع مغامرات مريم"
|
exit
termux-setup-storage
pkg install git -y
git config --global user.email "bontmqa@gmail.com"
cd /sdcard/Documents/A/sapphire-hero-rewritten
mkdir -p .github/workflows
nano .github/workflows/export.yml
git init
git add .
git commit -m "Start building my game"
git remote add origin https://github.com/bontmqa/sapphire-hero-rewritten.git
git push -u origin main
git remote remove origin
git remote add origin https://github.com/bontmqa/Marys-Adventures.git
git push -u origin main
git remote remove origin
git remote add origin https://github.com/bontmqa/Mary-s-Adventures-.git
git push -u origin main
git remote remove origin
git remote add origin https://github.com/bontmqa-ai/Mary-s-Adventures-.git
git push -u origin main
git commit --amend --no-edit
git push -u origin main -f
git rm --cached sapphire-hero-rewritten.zip
git rm --cached sapphire-hero-rewritten.7z
git commit -m "Remove large zip files for export"
git push -u origin main -f
git rm -r --cached z_Documentation/
git rm --cached *.zip
git rm --cached *.7z
git commit -m "Exclude heavy files for build"
git push -u origin main -f
pkg install git-lfs
git lfs install
git lfs track "*.zip"
git lfs track "*.7z"
git add .gitattributes
git add .
git commit -m "Add large files using LFS"
git push -u origin main
git config --global http.postBuffer 524288000
git config --global core.compression 0
git push -u origin main
y
git push -u origin main
rm -rf .git
git init
git lfs install
git lfs track "*.zip"
git lfs track "*.7z"
git lfs track "z_Documentation/**"
git add .gitattributes
git add .
