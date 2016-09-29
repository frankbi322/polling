class AddForeignKeys < ActiveRecord::Migration
  def change
    add_column :polls, :author_id, :integer
    add_column :questions, :poll_id, :integer
    add_column :answer_choices, :question_id, :integer
  end
end
