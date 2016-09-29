class UpdateColumn < ActiveRecord::Migration
  def change
    rename_column :polls, :author, :author_name
  end
end
