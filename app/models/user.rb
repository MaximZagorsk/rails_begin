class User < ApplicationRecord
  def ending_test_by_level(level)
    result_user = Result.where(user_id: self.id)
    Test.where(id: result_user[0].test_id, level: level)
  end
end
