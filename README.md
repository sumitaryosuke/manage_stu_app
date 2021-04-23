## アプリケーション名
  生徒管理アプリケーション
## 概要
  ユーザー登録、生徒の個人情報、成績管理、新入会機能、面談予約機能、情報共有機能等を実装。
## URL
  https://manege-stu-app.herokuapp.com/
## テスト用アカウント

## 利用方法

## 目指した課題解決
  ペルソナを一人で教室運営する講師とする。主にエクセルで顧客情報を管理している。
  課題は、通常行う事務業務の負担を軽減すること。一人で運営するため電話対応が負担になり講義に集中できないこと。
  入会希望者はオンラインで対応、その際ユーザー登録をすることによる顧客情報管理で、エクセル等への入力業務を軽減。
  ユーザー情報に成績管理機能を実装することで一人ひとりの成績情報の蓄積を容易にする。なおユーザーサイドでも入力を可能にすることで、入力業務を軽減する。
## 洗い出した要件
  
## 実装した機能についてのGifと説明

## 実装予定の機能
  生徒登録機能
  生徒詳細機能
  メール機能
  イベント告知機能

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