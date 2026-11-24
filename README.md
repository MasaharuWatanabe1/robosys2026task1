# wordfindコマンド

![test](https://github.com/MasaharuWatanabe1/robosys2026task1/actions/workflows/test.yml/badge.svg)

標準入力から読み込んだ文章の中から、指定した文字列を含む行を検索し、その行番号を標準出力に表示するコマンドです。

## 使用方法

検索したい文字列を引数に指定して実行します。

```
$ printf 'ドライブ\n勉強\nドライブ\nドライブ\n' | ./wordfind ドライブ
1
3
4
```

上記の例では、「ドライブ」という文字列を含む行の行番号を表示します。

## 必要なソフトウェア

- Python
  - テスト済みバージョン: 3.10〜3.14

## テスト環境

- Ubuntu 24.04 LTS

## ライセンス

- このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます。
- © 2026 Masaharu Watanabe
