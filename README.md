# テーブル設計

## users テーブル

| Column             | Type    |  Options                    |
|--------------------|---------|-----------------------------|
| name               | string  | null: false                 |
| name_ruby          | string  | null: false                 |
| email              | string  | null: false unique: true    |
| belongs            | string  | null: false                 |
| position           | string  | null: false                 |
| page_select        | integer | null: false                 |
| admin              | boolean | default: false              |

### Association

- has_many :items
- has_many :user_samples
- has_many :sample_requests, through: :user_samples

## items テーブル

| Column              | Type           |  Options           |
|---------------------|----------------|--------------------|
| manufacturer        | string         | null: false        |
| item_name           | string         | null: false        |
| standard            | string         | null: false        |
| strage_condition    | string         | null: false        |
| sell_by             | string         | null: false        |
| description         | text           | null: false        |
| image               | Active_storage |                    |
| user                | references     | foreign_key :true  |

### Association

- belongs_to :user
- has_many :item_samples
- has_many :sample_requests, through: :item_samples

## sample_requests テーブル

| Column   | Type        | Opsions           |
|----------|-------------|-------------------|
| user     | references  | foreign_key :true |
| item     | references  | foreign_key :true |

### Association

- has_many :user_samples
- has_many :users, through: :user_samples
- has_many :item_samples
- has_many :items, through: :item_samples

## user_samples テーブル（中間テーブル）

### Association

- belongs_to :user
- belongs_to :sample_request

## item_samples テーブル（中間テーブル）

### Association

- belongs_to :item
- belongs_to :sample_request