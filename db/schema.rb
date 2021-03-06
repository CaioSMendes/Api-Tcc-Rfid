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

ActiveRecord::Schema.define(version: 2021_12_02_000211) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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

  create_table "bluetoohsearches", force: :cascade do |t|
    t.string "rfidCode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "product_id", null: false
    t.index ["product_id"], name: "index_bluetoohsearches_on_product_id"
  end

  create_table "buys", force: :cascade do |t|
    t.float "price"
    t.integer "quantity"
    t.date "dateBuy"
    t.float "discount"
    t.float "measurement"
    t.text "description"
    t.float "totbuy"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "provider_id", null: false
    t.bigint "tax_id", null: false
    t.bigint "product_id", null: false
    t.index ["product_id"], name: "index_buys_on_product_id"
    t.index ["provider_id"], name: "index_buys_on_provider_id"
    t.index ["tax_id"], name: "index_buys_on_tax_id"
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
    t.decimal "price"
    t.integer "quantity"
    t.string "unity"
    t.text "description"
    t.string "productCode"
    t.string "gtin"
    t.string "rfid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "categorie_id", null: false
    t.bigint "provider_id", null: false
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

  create_table "sells", force: :cascade do |t|
    t.float "price"
    t.integer "quantity"
    t.date "dataSell"
    t.float "discount"
    t.float "measurement"
    t.text "description"
    t.float "totsell"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "product_id", null: false
    t.bigint "client_id", null: false
    t.bigint "tax_id", null: false
    t.index ["client_id"], name: "index_sells_on_client_id"
    t.index ["product_id"], name: "index_sells_on_product_id"
    t.index ["tax_id"], name: "index_sells_on_tax_id"
  end

  create_table "taxes", force: :cascade do |t|
    t.float "shipping"
    t.float "costAdd"
    t.float "ipi"
    t.float "icms"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "companyName"
    t.string "image"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider", "companyName"], name: "index_users_on_uid_and_provider_and_companyName", unique: true
  end

  create_table "wallets", force: :cascade do |t|
    t.float "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bluetoohsearches", "products"
  add_foreign_key "buys", "products"
  add_foreign_key "buys", "providers"
  add_foreign_key "buys", "taxes"
  add_foreign_key "clients", "addresses"
  add_foreign_key "products", "categories", column: "categorie_id"
  add_foreign_key "products", "providers"
  add_foreign_key "providers", "addresses"
  add_foreign_key "sells", "clients"
  add_foreign_key "sells", "products"
  add_foreign_key "sells", "taxes"
end
