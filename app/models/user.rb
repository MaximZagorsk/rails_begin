class User < ApplicationRecord
  has_many :results, dependent: :destroy
  has_many :tests, through: :results

  def ending_test_by_level(level)
    Test.joins(:results)
        .where(results: { user_id: id })
        .where(tests: {level: level})
  end
end
