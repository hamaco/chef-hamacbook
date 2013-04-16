Chef Hamaco's Mac cookbook
==========

セットアップ
------------

必要なパッケージは以下のコマンド実行すれば入るはず。

```
$ rake init
```


実行
----

以下のコマンドで chef-solo が実行される。

```
$ rake setup:mac
```


TODO
----

- zip_package がインストール済みでも zip ファイルのダウンロードをしてしまう
- rbenv が先か chef が先かの矛盾状態どうにかしたい
- php-nabe とか現在自作シェルスクリプトでやってるやつを移植
