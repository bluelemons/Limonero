class CreateAvaluos < ActiveRecord::Migration
  def change
    create_table :avaluos do |t|
      t.integer :ncuotas
      t.integer :couta_cents
      t.string :cuota_currency
      t.string :interes
      t.integer :lot_id

      t.timestamps
    end
  end
end
