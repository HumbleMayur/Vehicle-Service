# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_20_055007) do
  create_table "customer_services", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "names_id_id", null: false
    t.bigint "cust_id_id", null: false
    t.date "service_startdate"
    t.date "service_enddate"
    t.float "amount_paid"
    t.float "amount_due"
    t.float "total_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cust_id_id"], name: "index_customer_services_on_cust_id_id"
    t.index ["names_id_id"], name: "index_customer_services_on_names_id_id"
  end

  create_table "customers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "cust_id"
    t.string "emp_name"
    t.date "cust_DOB"
    t.string "cust_address"
    t.integer "services_selected"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers_services", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "cust_id"
    t.integer "service_id"
    t.string "vehicle_type"
    t.string "vehicle_name"
    t.string "vehicle_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "emp_id"
    t.string "emp_type"
    t.string "emp_name"
    t.date "emp_DOB"
    t.integer "services_assigned"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees_services", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "emp_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "names", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "service_name"
    t.decimal "service_cost", precision: 10
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "service_id"
    t.string "service_name"
    t.string "service_status"
    t.string "service_cost"
    t.datetime "service_startdate"
    t.datetime "service_enddate"
    t.float "amount_paid"
    t.float "amount_due"
    t.float "maintainance_cost"
    t.float "Total_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services_offereds", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "service_name"
    t.decimal "service_cost", precision: 10
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
