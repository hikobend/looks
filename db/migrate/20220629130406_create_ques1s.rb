class CreateQues1s < ActiveRecord::Migration[6.1]
  def change
    create_table :ques1s do |t|
      t.boolean :question, default: false, null: false

      t.timestamps
    end
  end
end
