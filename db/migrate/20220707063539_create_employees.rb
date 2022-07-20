class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.integer :emp_id
      t.string :emp_type
      t.string :emp_name
      t.date :emp_DOB
      t.integer :services_assigned

      t.timestamps
    end
  end
end
