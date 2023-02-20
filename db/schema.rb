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

ActiveRecord::Schema[7.0].define(version: 2023_02_20_182526) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "channels", force: :cascade do |t|
    t.string "income_type"
    t.bigint "family_id", null: false
    t.bigint "supplier_id", null: false
    t.text "description"
    t.string "crotal"
    t.string "lot"
    t.integer "weight"
    t.string "temperature"
    t.integer "cost"
    t.integer "total"
    t.date "slaughter"
    t.date "birth"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_channels_on_family_id"
    t.index ["supplier_id"], name: "index_channels_on_supplier_id"
    t.index ["user_id"], name: "index_channels_on_user_id"
  end

  create_table "cut_elaborateds", force: :cascade do |t|
    t.bigint "cut_id", null: false
    t.bigint "elaborated_product_name_id", null: false
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cut_id"], name: "index_cut_elaborateds_on_cut_id"
    t.index ["elaborated_product_name_id"], name: "index_cut_elaborateds_on_elaborated_product_name_id"
  end

  create_table "cut_names", force: :cascade do |t|
    t.string "name"
    t.bigint "piece_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["piece_id"], name: "index_cut_names_on_piece_id"
  end

  create_table "cuts", force: :cascade do |t|
    t.bigint "piece_id", null: false
    t.bigint "cut_name_id", null: false
    t.integer "weight"
    t.integer "final_weight"
    t.string "processing_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cut_name_id"], name: "index_cuts_on_cut_name_id"
    t.index ["piece_id"], name: "index_cuts_on_piece_id"
  end

  create_table "elaborated_product_names", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.string "code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mature_cuts", force: :cascade do |t|
    t.bigint "cut_id", null: false
    t.date "start_date"
    t.date "end_date"
    t.integer "final_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cut_id"], name: "index_mature_cuts_on_cut_id"
  end

  create_table "piece_names", force: :cascade do |t|
    t.string "name"
    t.bigint "family_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_piece_names_on_family_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.bigint "quartering_id", null: false
    t.bigint "piece_name_id", null: false
    t.integer "weight"
    t.integer "final_weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["piece_name_id"], name: "index_pieces_on_piece_name_id"
    t.index ["quartering_id"], name: "index_pieces_on_quartering_id"
  end

  create_table "quarterings", force: :cascade do |t|
    t.bigint "channel_id", null: false
    t.string "lot"
    t.datetime "date"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["channel_id"], name: "index_quarterings_on_channel_id"
    t.index ["user_id"], name: "index_quarterings_on_user_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "nit"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "role"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "channels", "families"
  add_foreign_key "channels", "suppliers"
  add_foreign_key "channels", "users"
  add_foreign_key "cut_elaborateds", "cuts"
  add_foreign_key "cut_elaborateds", "elaborated_product_names"
  add_foreign_key "cut_names", "pieces"
  add_foreign_key "cuts", "cut_names"
  add_foreign_key "cuts", "pieces"
  add_foreign_key "mature_cuts", "cuts"
  add_foreign_key "piece_names", "families"
  add_foreign_key "pieces", "piece_names"
  add_foreign_key "pieces", "quarterings"
  add_foreign_key "quarterings", "channels"
  add_foreign_key "quarterings", "users"
end
