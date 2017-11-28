class CreateAdminPropertyAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_property_areas do |t|
      t.integer :property_id
      t.string :measurement
      t.integer :land_area
      t.integer :occupied_area
      t.integer :building_area1
      t.integer :building_area2
      t.integer :occupied_area
      t.integer :balcony_area
      t.integer :terrace_area
      t.integer :privategarden_area
      t.string :driveway_burden
      t.integer :driveway_area
      t.string :driveway_part1
      t.string :driveway_part2
      t.string :setback_class
      t.integer :setback_distance
      t.integer :setback_area
      t.string :alleyground_class
      t.integer :alleyground_area
      t.integer :firstfloor_area
      t.integer :secondfloor_area
      t.integer :thirdfloor_area
      t.text :otherfloor_area
      t.string :development_area1
      t.integer :total_area
      t.integer :subdivision
      t.date :construction_date
      t.integer :coownership_area
      t.string :coownership
      t.string :development_area2
      t.integer :building_area3
      t.integer :totalfloor_area

      t.timestamps
    end
  end
end
