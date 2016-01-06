class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.references :typeofpet, index: true
      t.string :breed
      t.integer :age
      t.integer :weight
      t.date :lastvisit

      t.timestamps null: false
    end
  end
end
