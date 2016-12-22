class CreateAuthorizeCremationAndDisposition < ActiveRecord::Migration[5.0]
  def change
    create_table :authorize_cremation_and_dispositions do |t|
      t.date :date
      t.integer :case_number

      t.string :crematory_name
      t.string :address
      t.integer :phone_number

      t.string :name_of_decease
      t.string :martial_status
      t.string :last_address
      t.string :place_of_death
      t.string :sex
      t.integer :age
      t.date :date_of_birth
      t.date :date_of_death
      t.integer :weight
      t.text :delivery

      t.timestamps null: false
    end
  end
end
