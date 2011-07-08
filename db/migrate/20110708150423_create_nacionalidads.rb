class CreateNacionalidads < ActiveRecord::Migration
  def change
    create_table :nacionalidads do |t|
      t.string :name

      t.timestamps
    end
  end
end
