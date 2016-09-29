class Response < ActiveRecord::Base

  validate :not_duplicate_response
  validate :no_rigging

  belongs_to(
    :respondent,
    :class_name  => "User",
    :foreign_key => :user_id,
    :primary_key => :id
  )

  belongs_to(
    :answer_choice,
    :class_name => "AnswerChoice",
    :foreign_key => :answer_choice_id,
    :primary_key => :id
  )

  has_one(
    :question,
    :through => :answer_choice,
    :source => :question
  )

  def not_duplicate_response
    sibling_responses.where.not("self.user_id = user_id")
  end

  def sibling_responses
    self.question.responses
  end

  def no_rigging
    if self.respondent.id == self.answer_choice.question.poll.author_id
      errors[:rigging] << "can't vote for your own poll"
    end
  end
end
