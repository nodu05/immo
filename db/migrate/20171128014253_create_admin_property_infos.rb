class CreateAdminPropertyInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :admin_property_infos do |t|
      t.string :property_type1
      t.string :property_type2
      t.string :transaction_type
      t.date :mediation_date
      t.integer :condition
      t.text :supplementary_explanation

      t.timestamps
    end
  end
end
