class UpdateColumns < ActiveRecord::Migration
  def change
    rename_column :responses, :responder, :responder_id
    rename_column :responses, :response, :response_id
  end
end
