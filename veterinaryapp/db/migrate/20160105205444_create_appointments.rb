class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.date :date
      t.references :doctor, null: false, index: true
      t.string :pet
      t.string :customer
      t.boolean :reminder
      t.string :reason

      t.timestamps null: false
    end
  end
end
