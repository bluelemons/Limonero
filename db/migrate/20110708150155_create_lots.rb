class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.string :manzana
      t.string :loteo
      t.string :parcela
      t.string :partida

      t.timestamps
    end
  end
end
