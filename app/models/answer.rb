class Answer < ApplicationRecord

  belongs_to :question

  validates :title, presence: true


  validate :validate_min_and_max_amounts_answers

  scope :correct_true, -> { where(correct: true) }
  
  def validate_min_and_max_amounts_answers
    errors.add(:answers) if question.answers.count >= 4
  end
end
