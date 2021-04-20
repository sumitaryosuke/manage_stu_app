class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :term_id, null: false
      t.integer :grade_id, null: false
      t.integer :user_id, null: false
      
      t.integer :japanese, default: "0"
      t.integer :mathematics, default: "0"
      t.integer :english, default: "0"
      t.integer :social_studies, default: "0"
      t.integer :science, default: "0"

      t.timestamps
    end
  end
end