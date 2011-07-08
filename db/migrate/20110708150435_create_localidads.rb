class CreateLocalidads < ActiveRecord::Migration
  def change
    create_table :localidads do |t|

      t.timestamps
    end
  end
end
