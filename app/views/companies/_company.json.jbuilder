json.extract! company, :id, :name, :main_phone, :Inquiry_phone, :postal_code, :prefecture, :city, :street, :email, :license_number, :open_time, :end_time, :regular_holiday, :created_at, :updated_at
json.url company_url(company, format: :json)
