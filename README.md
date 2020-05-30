# Let the world knowとは
各チャンネル（各カテゴリ）についての考えや思いを発信し合えるアプリ
# 開発環境
 - AWS Cloud 9
 - Rails 5.0.7.2
 - mysql2 0.4.10
# 機能一覧
## ユーザー登録
- 新規ユーザー作成
- ログイン　
- ログアウト
- ログイン名表示
## チャンネル
- チャンネル一覧画面
- チャンネル作成　
- チャンネル削除
- 検索機能
## 投稿（ログイン中のみ投稿可能）
- 投稿作成
- 投稿編集
- 投稿削除
- 画像添付で作成（サムネイル表示）
- 検索機能
- ページング機能
- 投稿日・時間表示（日本時間）
# 追加導入したgem
- 'carrierwave'
- 'devise'
- 'mini_magick'
- 'tzinfo-data'
- 'bootstrap-will_paginate'
- 'will_paginate'
# デプロイ
- heroku
# 使い方
## アカウント作成
- トップページの右上の『ログインボタン』を押します。
- 押すとログインページに飛びます。
- 下の方にある「アカウント作成ボタン」を押します。
- アカウント作成画面に飛ぶので必要項目を埋めて作成完了です。
## 投稿作成
- トップ画面の真ん中にある投稿したいカテゴリを選択したら、そのカテゴリ専用の投稿画面にとびます。
- 投稿画面でコメントや写真を打ち込んで「作成ボタン」を押せば投稿完了です。
