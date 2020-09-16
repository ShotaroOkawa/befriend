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

- has_many :posts
- has_many :events, through: :user_events
- has_many :user_events


## posts テーブル

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