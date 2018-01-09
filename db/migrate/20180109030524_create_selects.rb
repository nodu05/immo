class CreateSelects < ActiveRecord::Migration[5.1]
  def change
    create_table :selects do |t|
      t.string :content_id
      t.integer :select_id
      t.text :return_text

      t.timestamps
    end
  end
end
