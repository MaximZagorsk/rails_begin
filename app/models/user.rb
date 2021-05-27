class User < ApplicationRecord
  def ending_test_by_level(level)
    Test.joins('INNER JOIN results ON results.test_id = tests.id')
        .where('results.user_id = ?', id).where('tests.level = ?', level)
  end
end
