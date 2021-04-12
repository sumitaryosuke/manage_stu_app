class CreateScores < ActiveRecord::Migration[6.0]
  def change
    create_table :scores do |t|
      t.integer :term_id, null: false
      t.integer :grade_id, null: false
      
      t.integer :japanese
      t.integer :mathematics
      t.integer :english
      t.integer :social_studies
      t.integer :science

      t.timestamps
    end
  end
end
