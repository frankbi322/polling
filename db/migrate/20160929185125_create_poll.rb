class CreatePoll < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title, null: false
      t.string :author, null:false

      t.timestamps
    end
  end
end