class CreatePiroFirstCall < ActiveRecord::Migration[5.0]
  def change
    create_table :piro_first_calls do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name

      t.string :street_address
      t.string :city
      t.string :state
      t.integer :zipcode

      t.string :hospital_name
      t.string :hospital_city

      t.string :place_of_birth
      t.date :date_of_birth
      t.string :martial_status
      t.integer :social_security
      t.string :last_occupation
      t.string :education_level
      t.string :mothers_name
      t.string :fathers_name
      t.string :spouse_name

      t.string :name_of_cemetery

      t.string :kin_first_name
      t.string :kin_last_name
      t.string :kin_relationship
      t.string :kin_street_address
      t.string :kin_city
      t.string :kin_state
      t.integer :kin_zipcode
      t.integer :kin_phone_number

      t.integer :user_id

      t.timestamps null: false
    end
  end
end
