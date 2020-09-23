# アプリケーション名
- Befriend
# アプリケーション概要
- 興味のある土地の現地の人たちとの交流や情報収集、質問が出来るアプリケーション
# URL
# テスト用アカウント
# 利用方法
# 目指した課題解決
- 知らない国や土地に住むのは誰しもが不安をもつもの。この不安を解消するためには、現地で知り合いの輪を広げることが大切。
- 知らない土地では情報が大切だが、情報収集も簡単ではない。
- 旅行をする上でも、現地の友達がいるのといないのでは、充実感も全く違う。
- 旅行では、ガイドブックに載っている王道の場所だけでなく、現地の人が勧める場所も訪れたい。
- 引っ越しや旅行をする予定は無いが、外国の文化や言葉を学びたい。
- 日本のアニメ文化に興味があるので、日本人と話がしたい。
# 洗い出した要件
- 国リストページ
- 記事一覧表示機能
- 記事投稿機能
- 記事詳細表示機能
- 記事編集機能
- 記事削除機能
- Q&A一覧表示機能
- Q&A投稿機能
- Q&A詳細表示機能
- Q&A編集機能
- Q&A削除機能
- イベント一覧表示機能
- イベント投稿機能
- イベント詳細表示機能
- イベント編集機能
- イベント削除機能
- イベント参加機能
- ユーザー新規登録機能
- ユーザーログイン機能
- ユーザーログアウト機能
- マイページ機能
- カテゴリー別表示機能
- グッドボタン機能
- 人気順表示機能
- 検索機能
- 記事に対するコメント機能
- 友達機能
- ビデオ通話機能
- 地方の名前の取得
- 翻訳機能
# 実装した機能についてのGIFと説明
# 実装予定の機能
# データベース設計
## ER図 https://gyazo.com/4b3f9bb3adca1da7be8a923202ba43fe
## users テーブル

| Column           | Type    | Options      |
| ---------------- | ------- | ------------ |
| first_name       | string  | null: false  |
| last_name        | string  | null: false  |
| email            | string  | null: false  |
| password         | string  | null: false  |
| gender_id        | integer | null: false  | <!-- active record -->
| city             | string  | null: false  |
| birthday         | date    | null: false  |
| language         | string  |              |

### Association

- has_many :articles
- has_many :questions
- has_many :answers
- has_many :events, through: :user_events
- has_many :user_events


## articles テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| country_id    | integer    | null: false                    |
| category_id   | string     | null: false                    |
| title         | string     | null: false                    |
| description   | string     | null: false                    |
| image         | -          | Active Storage                 |

### Association

- belongs_to :user

## questions テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| country_id    | integer    | null: false                    |
| category_id   | integer    | null: false                    |
| title         | string     | null: false                    |
| text          | string     | null: false                    |

### Association

- belongs_to :user
- has_many :answers

## answers テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| question      | references | null: false, foreign_key: true |
| text          | string     | null: false                    |

### Association

- belongs_to :user
- belongs_to :question


## events テーブル
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| country_id    | string     | null: false                    |
| category_id   | string     | null: false                    |
| description   | string     | null: false                    |
| date          | datetime   | null: false                    |
| place         | string     | null: false                    |
| description   | string     | null: false                    |
| image         | -          | Active Storage                 |

### Association

- has_many :users, through: :user_events
- has_many :user_events

## user_events テーブル
| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| event         | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :event

# ローカルでの動作方法
