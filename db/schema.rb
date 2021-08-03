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

ActiveRecord::Schema.define(version: 2021_08_03_142905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "city"
    t.string "street"
    t.string "neighborhood"
    t.string "number"
    t.string "complement"
    t.string "state"
    t.string "zipcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "codCategorie"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "corporateName"
    t.string "fantasyName"
    t.string "name"
    t.string "phone"
    t.string "cnpj"
    t.string "email"
    t.string "codeClient"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "address_id", null: false
    t.index ["address_id"], name: "index_clients_on_address_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "quantity"
    t.string "unity"
    t.float "price"
    t.date "date"
    t.string "productCode"
    t.string "gtin"
    t.string "rfid"
    t.integer "productMin"
    t.integer "productMax"
    t.float "salePrice"
    t.float "saleCost"
    t.string "avaliable"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "categorie_id", null: false
    t.bigint "provider_id"
    t.index ["categorie_id"], name: "index_products_on_categorie_id"
    t.index ["provider_id"], name: "index_products_on_provider_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "corporateName"
    t.string "fantasyName"
    t.string "phone"
    t.string "cnpj"
    t.string "stateRegistration"
    t.string "email"
    t.string "business"
    t.string "codeProvider"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "address_id", null: false
    t.index ["address_id"], name: "index_providers_on_address_id"
  end

  add_foreign_key "clients", "addresses"
  add_foreign_key "products", "categories", column: "categorie_id"
  add_foreign_key "products", "providers"
  add_foreign_key "providers", "addresses"
end
