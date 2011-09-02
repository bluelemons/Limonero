class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.date    :inicio
      t.integer :lote_id
      t.integer :ncuotas
      t.integer :cuota_cents
      t.integer :cuota_inicial
      t.string  :cuota_currency, :limit => 3
      t.float   :interes
      t.text    :observaciones

      t.timestamps
    end
  end
end
