class CreateTypeofpets < ActiveRecord::Migration
  def change
    create_table :typeofpets do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
