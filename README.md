## テーブル設計

## users
| Column             | Type    | Options      |
| ------------------ | ------- | ------------ |
| email              | string  | null:false   |
| encrypted_password | string  | null:false   |
| last_name          | string  | null:false   |
| first_name         | string  | null:false   |
| last_name_kana     | string  | null:false   |
| first_name_kana    | string  | null:false   |
| birth_day          | date    | null:false   |
| postal_code        | string  | null:false   |
| prefecture_code    | string  | null:false   |
| city               | string  | null:false   |
| street             | string  | null:false   |
| building           | string  | ------------ |

### Association
- has_many :events
- has_many :scores

## events
| Column    | Type      | Options                        |
| --------- | --------- | ------------------------------ |
| name      | string    | null:false                     |
| content   | text      | null:false                     |
| start_day | datetime  | null:false                     |
| end_day   | datetime  | null:false                     |
| user      | reference | null: false, foreign_key: true |

### Association
- belongs_to :users

## scores
| Column         | Type      | Options                        |
| -------------- | --------- | ------------------------------ |
| term_id        | integer   | null:false                     |
| grade_id       | integer   | null:false                     |
| user           | reference | null: false, foreign_key: true |
| japanese       | integer   | ------------------------------ |
| mathematics    | integer   | ------------------------------ |
| english        | integer   | ------------------------------ |
| social_studies | integer   | ------------------------------ |
| science        | integer   | ------------------------------ |

### Association
- belongs_to :users