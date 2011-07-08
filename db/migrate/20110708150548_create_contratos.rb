class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.integer :payment_id
      t.integer :person_id

      t.timestamps
    end
  end
end
