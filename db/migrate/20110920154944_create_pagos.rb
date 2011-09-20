class CreatePagos < ActiveRecord::Migration
  def change
    create_table :pagos do |t|
      t.decimal :monto
      t.decimal :recargo
      t.decimal :tasa
      t.decimal :otro
      t.decimal :api
      t.date :fecha
      t.integer :contrato_id

      t.timestamps
    end
  end
end
