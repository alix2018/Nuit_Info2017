class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :contents
      t.boolean :accepted

      t.timestamps
    end
  end
end
