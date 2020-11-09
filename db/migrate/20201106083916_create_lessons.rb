class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.string :name
      t.integer :user_id, foreign_key: true

      t.timestamps
    end
  end
end
