class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :name
      t.boolean :ques_one

      t.timestamps
    end
  end
end
