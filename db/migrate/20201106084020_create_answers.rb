class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :content
      t.integer :question_id, foreign_key: true

      t.timestamps
    end
  end
end
