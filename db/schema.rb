# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161222032929) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authorize_cremation_and_dispositions", force: :cascade do |t|
    t.date     "date"
    t.integer  "case_number"
    t.string   "crematory_name"
    t.string   "address"
    t.integer  "phone_number"
    t.string   "name_of_decease"
    t.string   "martial_status"
    t.string   "last_address"
    t.string   "place_of_death"
    t.string   "sex"
    t.integer  "age"
    t.date     "date_of_birth"
    t.date     "date_of_death"
    t.integer  "weight"
    t.text     "delivery"
    t.integer  "relation_to_decease_number"
    t.text     "relation_to_decease_description"
    t.string   "funeral_name"
    t.string   "authorize_picker"
    t.text     "dispose_instruction"
    t.integer  "urn"
    t.string   "purchased_urn"
    t.text     "urn_description"
    t.string   "funeral_director"
    t.integer  "registration_number"
    t.string   "family_name"
    t.string   "family_address"
    t.integer  "user_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  create_table "cremation_permits", force: :cascade do |t|
    t.string   "next_of_kin"
    t.string   "address"
    t.string   "name_of_decease"
    t.string   "location_of_death"
    t.date     "date_of_death"
    t.string   "relationship"
    t.integer  "user_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "designation_of_intentions", force: :cascade do |t|
    t.string   "name_of_deceased"
    t.date     "scheduled_cremation"
    t.string   "location_cremation"
    t.integer  "phone_number"
    t.string   "address"
    t.string   "signature"
    t.string   "location_of_cemetery"
    t.string   "manner_of_disposition"
    t.string   "location"
    t.date     "date"
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "piro_first_calls", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "hospital_name"
    t.string   "hospital_city"
    t.string   "place_of_birth"
    t.date     "date_of_birth"
    t.string   "martial_status"
    t.integer  "social_security"
    t.string   "last_occupation"
    t.string   "education_level"
    t.string   "mothers_name"
    t.string   "fathers_name"
    t.string   "spouse_name"
    t.string   "name_of_cemetery"
    t.string   "kin_first_name"
    t.string   "kin_last_name"
    t.string   "kin_relationship"
    t.string   "kin_street_address"
    t.string   "kin_city"
    t.string   "kin_state"
    t.integer  "kin_zipcode"
    t.integer  "kin_phone_number"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "superadmin_role",        default: false
    t.boolean  "supervisor_role",        default: false
    t.boolean  "user_role",              default: true
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "written_statements", force: :cascade do |t|
    t.string   "next_of_kin"
    t.string   "name_of_decease"
    t.date     "date"
    t.integer  "user_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
