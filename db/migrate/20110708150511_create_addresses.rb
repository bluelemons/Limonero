class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :calle
      t.string :numero
      t.string :otro
      t.string :telefono
      t.integer :person_id
      t.integer :taddress_id

      t.timestamps
    end
  end
end
