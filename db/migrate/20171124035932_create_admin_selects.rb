class CreateAdminSelects < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_selects do |t|
      t.string :content_id
      t.integer :select_id
      t.text :return_text

      t.timestamps
    end
  end
end
