class CreateAdminPropertyLayouts < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_property_layouts do |t|
      t.integer :property_id
      t.string :floor_plan
      t.integer :room
      t.boolean :corner_room
      t.integer :room_level1
      t.string :room_type1
      t.integer :room_size1
      t.integer :room_level2
      t.string :room_type2
      t.integer :room_size2
      t.integer :room_level3
      t.string :room_type3
      t.integer :room_size3
      t.integer :room_level4
      t.string :room_type4
      t.integer :room_size4
      t.integer :room_level5
      t.string :room_type5
      t.integer :room_size5
      t.integer :room_level6
      t.string :room_type6
      t.integer :room_size6
      t.integer :room_level7
      t.string :room_type7
      t.integer :room_size7
      t.integer :room_leve8
      t.string :room_type8
      t.integer :room_size8
      t.integer :room_level9
      t.string :room_type9
      t.integer :room_size9
      t.text :other_room

      t.timestamps
    end
  end
end
