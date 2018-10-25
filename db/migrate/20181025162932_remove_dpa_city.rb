class RemoveDpaCity < ActiveRecord::Migration[5.2]
  def change
    remove_column :doctors, :city, :belongs_to 
    remove_column :patients, :city, :belongs_to
    remove_column :appointments, :city, :belongs_to
  end
end
