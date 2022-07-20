class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.integer :cust_id
      t.string :emp_name
      t.date :cust_DOB
      t.string :cust_address
      t.integer :services_selected

      t.timestamps
    end
  end
end
