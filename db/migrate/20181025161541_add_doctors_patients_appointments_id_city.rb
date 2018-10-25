class AddDoctorsPatientsAppointmentsIdCity < ActiveRecord::Migration[5.2]
  def change
    add_column :doctors, :city, :belongs_to 
    add_column :patients, :city, :belongs_to
    add_column :appointments, :city, :belongs_to
  end
end
