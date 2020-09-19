# テーブル設計

## users テーブル

| Column           | Type    | Options      |
| ---------------- | ------- | ------------ |
| first_name       | string  | null: false  |
| last_name        | string  | null: false  |
| email            | string  | null: false  |
| password         | string  | null: false  |
| gender_id        | string  | null: false  | <!-- active record -->
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
| title         | string     | null: false                    |
| category      | string     | null: false                    |
| country       | string     | null: false                    |
| description   | string     | null: false                    |
| image         | -          | Active Storage                 |

### Association

- belongs_to :user

## questions テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| user          | references | null: false, foreign_key: true |
| title         | string     | null: false                    |
| category      | string     | null: false                    |
| country       | string     | null: false                    |
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
| category      | string     | null: false                    |
| country       | string     | null: false                    |
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