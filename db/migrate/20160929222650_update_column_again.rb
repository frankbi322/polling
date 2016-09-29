class UpdateColumnAgain < ActiveRecord::Migration
  def change
    rename_column :responses, :responder_id, :user_id
    rename_column :responses, :response_id, :answer_choice_id
  end
end
