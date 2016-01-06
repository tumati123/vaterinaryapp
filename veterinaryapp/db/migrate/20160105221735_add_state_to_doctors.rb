class AddStateToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :state, :string
  end
end
