class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :direccion
      t.string :localidad

      t.timestamps
    end
  end
end
