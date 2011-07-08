class CreateMatrimonios < ActiveRecord::Migration
  def change
    create_table :matrimonios do |t|
      t.date :nupcias
      t.integer :person_id
      t.integer :person_id1

      t.timestamps
    end
  end
end
