Chef Hamaco's Mac cookbook
==========

Chefを使って普段自分が使っているMac環境を一発で整えたい。

セットアップ
------------

chefが必要なので以下のコマンドでchefをインストールしてください。
chef 11になったおかげでruby+chefが先かcookbook実行が先か問題に終止符が打たれた！

```
curl -sL https://www.opscode.com/chef/install.sh | sudo bash
```


実行
----

以下のコマンドで chef-solo が実行される。

```
$ chef-solo -c ./solo.rb -j nodes/mac.json
```


TODO
----

- php-nabe とか現在自作シェルスクリプトでやってるやつを移植
- Vagrant が /Applications/Vagrant ディレクトリ作るだけなので毎回インストールが走ってしまう
- Macのdefaultsとかのシステム環境設定部分が全然分からない
- アプリ毎の設定とかどうやって管理していこうかなー
