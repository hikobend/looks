class AddColumnToQuestions < ActiveRecord::Migration[6.1]
  def change
    add_reference :questions, :top, foreign_key: true
  end
end
