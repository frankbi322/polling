# create_table "users", force: :cascade do |t|
#   t.string   "user_name",  null: false
#   t.datetime "created_at"
#   t.datetime "updated_at"
# end

class User < ActiveRecord::Base

  validates :user_name, presence: true, uniqueness: true

  has_many(
    :authored_polls,
    :class_name => "Poll",
    :foreign_key => :author_id,
    :primary_key => :id
  )

  has_many(
    :responses,
    :class_name => "Response",
    :foreign_key => :user_id,
    :primary_key => :id
  )

  has_many(
    :response_choices,
    :through => :responses,
    :source => :answer_choice
  )

end
