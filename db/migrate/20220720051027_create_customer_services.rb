class CreateCustomerServices < ActiveRecord::Migration[7.0]
  def change
    create_table :customer_services do |t|
      t.references :names_id, null: false, foreign_key: false
      t.references :cust_id, null: false, foreign_key: false
      t.date :service_startdate
      t.date :service_enddate
      t.float :amount_paid
      t.float :amount_due
      t.float :total_amount

      t.timestamps
    end
  end
end
