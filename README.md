# README

1.アプリケーション概要
▶︎パチンコ・スロットをする上でデータ収集は必須です。
  一般のメモなどを利用していましたが情報が多くなり収集が付かなくなり、
  一括してまとめられるアプリがあれば便利と考え作成しました。

①ホール情報管理
▶︎イベント情報を含む近況情報をまとめる為に使用。

②子役情報管理
▶︎前例を残す為にカウントおよび記録する為に使用。


2.使用した技術
●インフラ
▶︎Heroku

●データベース
▶︎MySQL

●言語
▶︎Ruby
▶︎Ruby on Rails
▶︎HTML・CSS

●開発管理
▶︎Git・GitHub


3.機能一覧
▶︎ユーザー管理機能（devise）
▶︎保存機能
▶︎詳細、編集、削除機能


4.アプリの使用例
① 新規登録orログイン
② ホールデータ登録
③ マイページから閲覧
④ 情報の編集削除
⑤ 保存内容へ追加でデータ添付


5.追加予定内容
① 検索機能
▶︎情報が多くなることを想定して名称から検索できる様にする為。

② インフラをAWSへ移行
▶︎通信速度を向上させる為。

③ 開発環境をDockerへ移行
▶︎昨今のweb業界ではDockerの仮装コンテナを利用した開発が主流と伺った為。


# テーブル設計

## users テーブル

| Column        | Type    | Options                   |
| ------------- | ------- | ------------------------- |
| email         | string  | null: false, unique: true |
| password      | string  | null: false               |
| nickname      | string  | null: false               |

### Association

- has_many :halls
- has_many :values

## halls テーブル

| Column          | Type       | Options           |
| --------------- | ---------- | ----------------- |
| name            | string     | null: false       |
| machine         | string     | null: false       |
| data            | text       | null: false       |
| user            | reference  |

### Association

- belongs_to :user
- has_many   :values

## values テーブル

| Column          | Type       | Options           |
| --------------- | ---------- | ----------------- |
| text            | text       | null: false       |
| user            | reference  |
| hall            | reference  |

### Association

- belongs_to :user
- belongs_to :hall
