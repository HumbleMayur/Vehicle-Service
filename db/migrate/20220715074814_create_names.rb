class CreateNames < ActiveRecord::Migration[7.0]
  def change
    create_table :names do |t|
      t.string :service_name
      t.decimal :service_cost
      t.string :description

      t.timestamps
    end
  end
end
 