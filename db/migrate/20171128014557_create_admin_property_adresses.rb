class CreateAdminPropertyAdresses < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_property_adresses do |t|
      t.integer :property_id
      t.string :prefecture
      t.string :city
      t.text :street
      t.boolean :show_street
      t.text :apartment_name
      t.string :roomnumber
      t.string :buildingnumber
      t.boolean :show_roomnumber

      t.timestamps
    end
  end
end
