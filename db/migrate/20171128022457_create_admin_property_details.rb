class CreateAdminPropertyDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_property_details do |t|
      t.integer :property_id
      t.integer :price
      t.integer :consumption_tax
      t.string :situation
      t.date :situation_date
      t.string :transfer
      t.string :transfer_date
      t.date :move_date
      t.string :remuneration
      t.integer :fee_part
      t.integer :fee_amount
      t.string :town_plan
      t.string :register_landcategory
      t.string :situation_landcategory
      t.string :zoning1
      t.string :zoning2
      t.string :optimum
      t.string :_site
      t.string :zoning_district
      t.integer :buildingcoverage_ratio
      t.integer :floorarea_ratio
      t.string :floorarea_restriction
      t.text :law_restriction
      t.boolean :rebuilding
      t.string :nationalland_law
      t.string :buildingcertification
      t.string :buildingcertification_number
      t.string :land_title
      t.string :terrain
      t.string :architectural_condition
      t.string :connecting_road
      t.string :paved_road
      t.string :road_class1
      t.integer :contact_distance1
      t.string :designation_road1
      t.string :road_direction1
      t.integer :road_width1
      t.string :road_class2
      t.integer :contact_distance2
      t.string :designation_road2
      t.string :road_direction2
      t.integer :road_width2
      t.string :road_class3
      t.integer :contact_distance3
      t.string :designation_road3
      t.string :road_direction3
      t.integer :road_width3
      t.string :road_class4
      t.integer :contact_distance4
      t.string :designation_road4
      t.string :road_direction4
      t.integer :road_width4
      t.string :homeowner_association

      t.timestamps
    end
  end
end
