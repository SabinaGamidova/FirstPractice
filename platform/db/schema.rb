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

ActiveRecord::Schema[7.1].define(version: 2024_03_24_124514) do
  create_table "addresses", force: :cascade do |t|
    t.string "city"
    t.string "street"
    t.string "build"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "client_likes", force: :cascade do |t|
    t.integer "client_profile_id", null: false
    t.integer "service_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_profile_id", "service_id"], name: "index_client_likes_on_client_profile_id_and_service_id", unique: true
    t.index ["client_profile_id"], name: "index_client_likes_on_client_profile_id"
    t.index ["service_id"], name: "index_client_likes_on_service_id"
  end

  create_table "client_profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.integer "client_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_client_profiles_on_client_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "difficulties", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employee_profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.datetime "date_registration"
    t.integer "employee_id", null: false
    t.integer "specialization_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["employee_id"], name: "index_employee_profiles_on_employee_id"
    t.index ["specialization_id"], name: "index_employee_profiles_on_specialization_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_employees_on_email", unique: true
    t.index ["reset_password_token"], name: "index_employees_on_reset_password_token", unique: true
  end

  create_table "orders", force: :cascade do |t|
    t.integer "status_id"
    t.integer "client_profile_id", null: false
    t.integer "comment_id"
    t.integer "employee_profile_id", null: false
    t.integer "urgency_id", null: false
    t.datetime "date_order"
    t.integer "service_id", null: false
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_profile_id"], name: "index_orders_on_client_profile_id"
    t.index ["comment_id"], name: "index_orders_on_comment_id"
    t.index ["employee_profile_id"], name: "index_orders_on_employee_profile_id"
    t.index ["service_id"], name: "index_orders_on_service_id"
    t.index ["status_id"], name: "index_orders_on_status_id"
    t.index ["urgency_id"], name: "index_orders_on_urgency_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "service_type"
    t.integer "difficulty_id", null: false
    t.integer "employee_profile_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["difficulty_id"], name: "index_services_on_difficulty_id"
    t.index ["employee_profile_id"], name: "index_services_on_employee_profile_id"
  end

  create_table "specializations", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "urgencies", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "client_likes", "client_profiles"
  add_foreign_key "client_likes", "services"
  add_foreign_key "client_profiles", "clients"
  add_foreign_key "employee_profiles", "employees"
  add_foreign_key "employee_profiles", "specializations"
  add_foreign_key "orders", "client_profiles"
  add_foreign_key "orders", "comments"
  add_foreign_key "orders", "employee_profiles"
  add_foreign_key "orders", "services"
  add_foreign_key "orders", "statuses"
  add_foreign_key "orders", "urgencies"
  add_foreign_key "services", "difficulties"
  add_foreign_key "services", "employee_profiles"
end
