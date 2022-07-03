class CreateTops < ActiveRecord::Migration[6.1]
  def change
    create_table :tops do |t|
      t.string :name
      t.boolean :ques_one
      t.boolean :ques_two
      t.boolean :ques_three
      t.boolean :ques_four
      t.boolean :ques_five

      t.timestamps
    end
  end
end
