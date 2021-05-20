class AddUsersColumnNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:users, :username, false)
    change_column_null(:users, :password, false)
  end
end
