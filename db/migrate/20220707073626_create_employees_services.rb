class CreateEmployeesServices < ActiveRecord::Migration[7.0]
  def change
    create_table :employees_services do |t|
      t.integer :emp_id
      t.integer :service_id

      t.timestamps
    end
  end
end
