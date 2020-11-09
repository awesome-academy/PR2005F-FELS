class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :content
      t.integer :category_id, foreign_key: true

      t.timestamps
    end
  end
end
