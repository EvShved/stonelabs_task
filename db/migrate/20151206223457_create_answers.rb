class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :context
      t.string :question
      t.integer :user_id
    end
  end
end
