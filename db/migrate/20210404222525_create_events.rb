class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name,        null: false
      t.text :content,       null: false
      t.datetime :start_day, null: false
      t.datetime :end_day,   null: false
      t.references  :user,   foreign_key: true

      t.timestamps
    end
  end
end
