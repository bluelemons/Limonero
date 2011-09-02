class CreateLotes < ActiveRecord::Migration
  def change
    create_table :lotes do |t|
      t.string :manzana
      t.string :loteo
      t.string :parcela
      t.string :partida
      t.integer :ncuotas
      t.integer :monto_cents
      t.string :monto_currency
      t.float :interes

      t.timestamps
    end
  end
end
