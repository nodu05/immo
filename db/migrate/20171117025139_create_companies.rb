class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :main_phone
      t.integer :Inquiry_phone
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
