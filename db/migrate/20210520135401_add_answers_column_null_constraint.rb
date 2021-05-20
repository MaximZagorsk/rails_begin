class AddAnswersColumnNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null(:answers, :title, false)
    change_column_null(:answers, :question_id, false)
  end
end
