class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.string :name
      t.string :ubicacion
      t.integer :superficie

      t.timestamps
    end
  end
end
