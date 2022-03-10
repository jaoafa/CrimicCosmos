# CrimicCosmos

Starbound ZakuroHat サーバに導入されている Mod のプロジェクトリポジトリです。

## Installation

Mod をインストールするには、以下二つの方法があります。

### pak ファイルをダウンロードしてインストール

1. Starbound を起動している場合は止める
2. [Releases](https://github.com/jaoafa/Starbound-ZakuroHatMod/releases) から最新バージョンの pak ファイルをダウンロード
3. `<Steamゲームディレクトリ>\steamapps\common\Starbound\mods\` にダウンロードしたファイルを移動する (デフォルトのインストール先であれば `C:\Program Files (x86)\Steam\steamapps\common\Starbound\mods\`)
4. Starbound を起動し、Mod が使用可能かを確認

### ソースコードから pak ファイルを作成してインストール

1. `git clone https://github.com/jaoafa/Starbound-ZakuroHatMod.git` か [Download ZIP](https://github.com/jaoafa/Starbound-ZakuroHatMod/archive/refs/heads/main.zip) でソースコードをダウンロード、必要に応じて展開
2. `Starbound-ZakuroHatMod` フォルダに入り、`_metadata` ファイルがあることを確認し、そのフォルダのパスをコピー
3. `<Steamゲームディレクトリ>\steamapps\common\Starbound\` をエクスプローラーで開く (デフォルトのインストール先であれば `C:\Program Files (x86)\Steam\steamapps\common\Starbound\`)
4. 次のコマンドを実行: `.\win32\asset_packer.exe <2でコピーしたパス> .\mods\Starbound-ZakuroHatMod.pak` (例: `.\win32\asset_packer.exe C:\Users\jaoafa\Desktop\Starbound-ZakuroHatMod\ .\mods\Starbound-ZakuroHatMod.pak`)
5. `mods` フォルダに `Starbound-ZakuroHatMod.pak` があれば pak ファイルの作成が成功
6. Starbound を起動し、Mod が使用可能かを確認

## Issue

Mod を使用して起きた不具合や新規機能追加などの要望については、[本プロジェクトリポジトリ Issue](https://github.com/jaoafa/Starbound-ZakuroHatMod/issues) にて受け付けます。  
不具合報告の場合は、Starbound のログファイル `<Steamゲームディレクトリ>\steamapps\common\Starbound\storage\starbound.log` (デフォルトのインストール先であれば `C:\Program Files (x86)\Steam\steamapps\common\Starbound\storage\starbound.log`) があると原因解決に役立ちます。

## Development

Starbound の Mod 開発には、UTF-8 かつ LF で保存可能なテキストエディタを使用する必要があります。  
本プロジェクトでは、[Visual Studio Code](https://code.visualstudio.com) の利用を推奨します。

詳しい開発の方法については、[公式の Wiki ページ](https://starbounder.org/Modding:Portal) をご覧ください。

## Publishment

本プロジェクトでは、`jaoafa/Starbound-ZakuroHatMod` の `main` ブランチに対して、`_metadata` ファイルの `version` 値を変更されたプルリクエストが発行され、それがマージされた場合は GitHub Actions によって自動的に Release が作成されます。  
また、全てのプルリクエストで自動的に pak ファイルが作成されます。これらに関する具体的な実装は [.github/workflows/release.yml](https://github.com/jaoafa/Starbound-ZakuroHatMod/blob/main/.github/workflows/release.yml) や [.github/workflows/pack.yml](https://github.com/jaoafa/Starbound-ZakuroHatMod/blob/main/.github/workflows/pack.yml) をご覧ください。

## License

本プロジェクトはオープンソースですが、本プロジェクトの Mod を使用する場合は私たちに一度確認をとってください。
