class CreateAdminStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_staffs do |t|
      t.string :company_id
      t.text :picture
      t.date :shooting_date
      t.string :certificate_number
      t.date :start_certificate_lifetime
      t.date :end_certificate_lifetime
      t.boolean :real_estate_notary
      t.string :last_name
      t.string :first_name
      t.string :furigana_last_name
      t.string :furigana_first_name
      t.string :gender
      t.date :birth
      t.string :home_phone
      t.string :mobile_phone
      t.integer :postal_code
      t.string :prefecture
      t.string :city
      t.text :street
      t.text :email

      t.timestamps
    end
  end
end
