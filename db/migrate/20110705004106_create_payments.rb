class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.integer :cuotas
      t.date    :inicio
      t.integer :person_id
      t.float   :interes

      t.timestamps
    end
  end
end

