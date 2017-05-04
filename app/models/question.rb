class Question < ApplicationRecord
  self.table_name = "questions"

  has_many :answers
  belongs_to :test

  def has_answers?
    answers.count > 0
  end


  def right_answers
    answers.where(is_correct: true)
  end
end
