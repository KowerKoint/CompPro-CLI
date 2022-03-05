# CompPro-CLI

## 概要
このプロジェクトは、[kotamanegi/CompPro-Workspace](https://github.com/kotamanegi/CompPro-Workspace)の改変版です。

[KowerKoint/CompPro-Workspace](https://github.com/KowerKoint/CompPro-Workspace)ではオリジナル版から以下の点の改変を行っていました。

- [ACL](https://github.com/atcoder/ac-library)をサブモジュールとして更新しやすくする
- テンプレートを自分の欲しい物に変更する
- その他細かいVSCode設定ファイルをより多くの環境で動作するものへ変更する

それでも以下の改善しにくい点がありました。

- `oj-download.py`がいくつかの問題を抱えている
  - 何をやっているのかわかりにくく管理しづらい
  - コンテストURLのみに対応していて問題だけのURLから1問だけをダウンロードすることができない
  - WSLではダウンロード中にスタックすることがあり、再度コマンドを実行してもフォルダが存在しているためエラーで止まる
- VSCode以外で同様のタスクを行おうと思ったときに簡単に設定しづらい

以上を踏まえ、[oj](https://github.com/online-judge-tools/oj)や[template-generator](https://github.com/online-judge-tools/template-generator)の完成形のシェルコマンドを使用し、シェルベースで操作を行うことで拡張をしやすくした。
特にVimへの対応を新たに行った。

**要件・使用方法については後日追記予定**
