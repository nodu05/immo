class Admin::PropertyInfo < ApplicationRecord
    has_one :property_adress, dependent: :destroy
    has_one :property_area, dependent: :destroy
    has_one :property_detail, dependent: :destroy
    has_one :property_layout, dependent: :destroy
    has_one :property_traffic, dependent: :destroy
end
