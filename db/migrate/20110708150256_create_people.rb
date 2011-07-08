class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :apellido
      t.string :apellido_materno
      t.string :nombre
      t.date :nacimiento
      t.string :documento
      t.integer :nacionalidad_id
      t.integer :civil_id
      t.text :observaciones

      t.timestamps
    end
  end
end
