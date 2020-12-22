# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_22_041509) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contracts", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "recipient_id", null: false
    t.decimal "discount"
    t.decimal "final_price"
    t.boolean "paid"
    t.string "vehicle_brand"
    t.string "vehicle_model"
    t.integer "vehicle_year"
    t.date "vehicle_order_date"
    t.date "vehicle_invoice_date"
    t.string "vehicle_license"
    t.string "renavam"
    t.date "end_block_date"
    t.boolean "have_insurance"
    t.string "insurance_vendor"
    t.string "insurance_company"
    t.date "insurance_due_date"
    t.decimal "insurance_budget"
    t.integer "rating"
    t.text "review"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipient_id"], name: "index_contracts_on_recipient_id"
    t.index ["user_id"], name: "index_contracts_on_user_id"
  end

  create_table "payments", force: :cascade do |t|
    t.date "date"
    t.bigint "contract_id", null: false
    t.decimal "amount"
    t.text "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contract_id"], name: "index_payments_on_contract_id"
  end

  create_table "recipients", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.string "pathology"
    t.date "birth_date"
    t.string "sus_number"
    t.string "irpf_receipt"
    t.string "voter_registration"
    t.string "sisen_user"
    t.string "sisen_password"
    t.text "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.decimal "price"
    t.decimal "tax_amount"
    t.text "notes"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "cpf"
    t.string "rg"
    t.string "address"
    t.string "neighborhood"
    t.string "city"
    t.string "phone_number1"
    t.string "phone_number2"
    t.string "email"
    t.string "password"
    t.text "notes"
    t.boolean "client"
    t.boolean "admin"
    t.boolean "active"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "contracts", "recipients"
  add_foreign_key "contracts", "users"
  add_foreign_key "payments", "contracts"
end
