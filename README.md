# haxenv
Simple Haxe version management

# Installation
powershellを起動して以下のコマンドを入力します。
```
Set-ExecutionPolicy RemoteSigned -scope Process
Invoke-WebRequest -Uri "https://github.com/enumori/haxenv/releases/download/2021.03.15/haxenv.zip" -OutFile .\haxenv.zip
Expand-Archive -Path .\haxenv.zip -DestinationPath $env:USERPROFILE
Remove-Item .\haxenv.zip
Rename-Item  $env:USERPROFILE\haxenv  $env:USERPROFILE\.haxenv
$path = [Environment]::GetEnvironmentVariable("PATH", "User")
$path = "$env:USERPROFILE\.haxenv;" + $path
[Environment]::SetEnvironmentVariable("PATH", $path, "User")
```
powershellやコマンドプロンプトを起動するとhaxenvが使用できます。

# Command Reference
| 実行内容 | コマンド|
| --- | --- |
| インストール可能なHaxeバージョンのリスト | haxenv install --list |
| インストール可能なHaxeバージョンのリストの更新 | haxenv update |
| インストール | haxenv install バージョン |
| インストール済みバージョンのリスト | haxenv versions |
| 全体のバージョンの切り替え | haxenv global バージョン |
| ローカルフォルダーのバージョンの切り替え | haxenv local バージョン |

# 使い方
## 1. Haxeをダウンロードする
```
PS > haxenv install 4.2.0
```
## 2. 使用するバージョンに設定する
```
PS > haxenv global 4.2.0
```
## 3. 指定したバージョンが使用できるかを確認
```
PS > haxenv --version
2で設定したバージョンが表示される
```
