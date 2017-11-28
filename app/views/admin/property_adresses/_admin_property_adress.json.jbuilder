json.extract! admin_property_adress, :id, :property_id, :prefecture, :city, :street, :show_street, :apartment_name, :roomnumber, :buildingnumber, :show_roomnumber, :created_at, :updated_at
json.url admin_property_adress_url(admin_property_adress, format: :json)
