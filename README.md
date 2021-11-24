# テーブル設計

## users テーブル

| Column             | Type    |  Options                       |
|--------------------|---------|--------------------------------|
| name               | string  | null: false                    |
| name_ruby          | string  | null: false                    |
| email              | string  | null: false uniquness: true    |
| occupation         | string  | null: false                    |
| position           | string  | null: false                    |
| page_select_id     | integer | null: false                    |
| admin              | boolean | default: false                 |

### Association

- has_many :items
- has_many :school_items
- has_many :user_contacts
- has_many :contacts, through: :user_contacts

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
- has_many_attached :images

## contacts テーブル

| Column                  | type       | Options           |
|-------------------------|------------|-------------------|
| contact_user_name       | string     | null: false       |
| contact_user_email      | string     | null:false        |
| contact_user_occupation | string     | null: false       |
| contact_manufacturer    | string     | null: false       |
| contact_item_name       | string     | null: false       |
| message                 | text       |                   |
| user                    | references | foreign_key: true |

### Association

- has_many :users, through: :user_contacts
- has_many :user_contacts


## user_contacts テーブル

| Column   | Type        | Opsions                        |
|----------|-------------|--------------------------------|
| user     | references  | null: false, foreign_key :true |
| contact  | references  | null: false, foreign_key :true |

### Association

- belongs_to :user
- belongs_to :contact

## stock_items テーブル

| Column                      | Type       | Options           |
|-----------------------------|------------|-------------------|
| stock_item_manufacturer     | string     | null: false       |
| stock_item_name             | string     | null: false       |
| stock_item_standard         | string     | null: false       |
| stock_item_strage_condition | string     | null: false       |
| stock_item_descriotion      | string     | null: false       |
| tag                         | references | foreign_key :true |

### Association

- has_one_attached :image
- has_many :item_connects, dependent: :destroy
- has_many :tags, through: :item_connects

## tags テーブル

| Column    | type     | Options                      |
|-----------|----------|------------------------------|
| tag_word  | string   | null: false, uniquness: true |

### Association

- has_many :item_connects
- has_many :stock_items, through: :item_connects


## item_connects テーブル（中間テーブル）

| Column     | Type       | 0ptions           |
|------------|------------|-------------------|
| stock_item | references | foreign_key :true |
| tag        | references | foreign_key :true |

### Association

- belongs_to :stock_item
- belongs_to :tag

## school_lunches テーブル

| Column          | type       | Options           |
|-----------------|------------|-------------------|
| manufacture     | string     | null: false       |
| lunch_item_name | string     | null: false       |
| user            | references | foreign_key :true |

### Association

- belongs_to :user
- has_one_attached :image