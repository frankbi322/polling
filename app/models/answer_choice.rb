class AnswerChoice < ActiveRecord::Base

  validates :text, presence: true, uniqueness: true

  belongs_to(
    :question,
    :class_name => "Question",
    :foreign_key => :question_id,
    :primary_key => :id
    )

  has_many(
    :responders,
    :class_name => "Response",
    :foreign_key => :answer_choice_id,
    :primary_key => :id
    )

    has_many(
      :responder_users,
      :through => :responders,
      :source => :responder_id

    )
end
