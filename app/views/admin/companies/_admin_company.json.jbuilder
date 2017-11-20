json.extract! admin_company, :id, :name, :main_phone, :inquiry_phone, :postal_code, :prefecture, :city, :street, :email, :license_number, :open_time, :end_time, :regular_holiday, :created_at, :updated_at
json.url admin_company_url(admin_company, format: :json)
