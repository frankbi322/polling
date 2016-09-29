class CreateResponse < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :responder, null: false
      t.integer :response, null: false
    end
  end
end
