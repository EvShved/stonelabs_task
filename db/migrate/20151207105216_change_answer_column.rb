class ChangeAnswerColumn < ActiveRecord::Migration
  def up
    remove_column :answers, :question, :string
    add_column :answers, :question_id, :integer
  end

  def down
    add_column :answers, :question, :string
    remove_column :answers, :question_id, :integer
  end
end
