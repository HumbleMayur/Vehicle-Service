class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.integer :service_id
      t.string :service_name
      t.string :service_status
      t.string :service_cost
      t.datetime :service_startdate
      t.datetime :service_enddate
      t.float :amount_paid
      t.float :amount_due
      t.float :maintainance_cost
      t.float :Total_cost

      t.timestamps
    end
  end
end
