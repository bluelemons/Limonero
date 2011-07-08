class CreatePays < ActiveRecord::Migration
  def change
    create_table :pays do |t|
      t.integer :debt_id
      t.date :fecha_de_pago
      t.integer :monto_cents
      t.string :monto_currency

      t.timestamps
    end
  end
end
