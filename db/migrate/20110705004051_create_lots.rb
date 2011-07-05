class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
      t.integer :block_id
      t.string  :direccion
      t.integer :superficie
      t.integer :payment_id

      t.timestamps
    end
  end
end

