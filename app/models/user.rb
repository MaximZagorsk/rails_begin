class User < ApplicationRecord
  has_many :results
  has_many :tests, through: :results

  def ending_test_by_level(level)
    Test.joins('JOIN results ON results.test_id = tests.id')
        .where('results.user_id = ?', id).where('tests.level = ?', level)
  end
end
