json.extract! staff, :id, :company_id, :picture, :shooting_date, :certificate_number, :start_certificate_lifetime, :end_certificate_lifetime, :real_estate_notary, :last_name, :first_name, :furigana_last_name, :furigana_first_name, :gender, :birth, :home_phone, :mobile_phone, :postal_code, :prefecture, :city, :street, :email, :created_at, :updated_at
json.url staff_url(staff, format: :json)
