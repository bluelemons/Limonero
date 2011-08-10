class CreateLargentinasPlaces < ActiveRecord::Migration
  def change
    create_table :largentinas_places do |t|
      t.string :name
      t.float :lat
      t.float :lng
      t.integer :place_id

      t.timestamps
    end
  end
end
