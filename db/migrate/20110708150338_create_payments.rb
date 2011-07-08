class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.date :inicio
      t.integer :avaluo_id

      t.timestamps
    end
  end
end
