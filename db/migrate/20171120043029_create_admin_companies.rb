class CreateAdminCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_companies do |t|
      t.string :name
      t.string :main_phone
      t.string :inquiry_phone
      t.integer :postal_code
      t.string :prefecture
      t.string :city
      t.text :street
      t.text :email
      t.text :license_number
      t.time :open_time
      t.time :end_time
      t.text :regular_holiday

      t.timestamps
    end
  end
end
