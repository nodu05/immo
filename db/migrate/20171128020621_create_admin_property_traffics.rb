class CreateAdminPropertyTraffics < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_property_traffics do |t|
      t.integer :property_id
      t.string :route_name1
      t.text :station_name1
      t.integer :station_walkm1
      t.integer :station_walkd1
      t.integer :station_car1
      t.integer :station_bus1
      t.integer :busstop_walkm1
      t.integer :busstop_walkd1
      t.text :busroute_name1
      t.text :busstop_name1
      t.string :route_name2
      t.text :station_name2
      t.integer :station_walkm2
      t.integer :station_walkd2
      t.integer :station_car2
      t.integer :station_bus2
      t.integer :busstop_walkm2
      t.integer :busstop_walkd2
      t.text :busroute_name2
      t.text :busstop_name2
      t.string :route_name3
      t.text :station_name3
      t.integer :station_walkm3
      t.integer :station_walkd3
      t.integer :station_car3
      t.integer :station_bus3
      t.integer :busstop_walkm3
      t.integer :busstop_walkd3
      t.text :busroute_name3
      t.text :busstop_name3
      t.text :other_transportation

      t.timestamps
    end
  end
end
