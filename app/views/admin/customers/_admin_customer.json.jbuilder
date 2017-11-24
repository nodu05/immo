json.extract! admin_customer, :id, :last_name, :first_name, :furigana_last_name, :furigana_first_name, :gender, :birth, :home_phone, :mobile_phone, :postal_code, :prefecture, :city, :street, :email, :created_at, :updated_at
json.url admin_customer_url(admin_customer, format: :json)
