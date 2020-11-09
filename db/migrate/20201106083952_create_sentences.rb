class CreateSentences < ActiveRecord::Migration[6.0]
  def change
    create_table :sentences do |t|
      t.integer :lesson_id
      t.integer :question_id, foreign_key: true
      t.integer :answer_id, foreign_key: true

      t.timestamps
    end
  end
end
