class CreateDesignationOfIntentions < ActiveRecord::Migration[5.0]
  def change
    create_table :designation_of_intentions do |t|
      t.string :name_of_deceased
      t.date :scheduled_cremation
      t.string :location_cremation

      t.integer :phone_number
      t.string :address
      t.string :signature

      t.string :location_of_cemetery
      t.string :manner_of_disposition
      t.string :location 
      t.data :date 
      t.string :name 

      t.timestamps null: false
    end
  end
end
