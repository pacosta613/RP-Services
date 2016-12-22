class CreateCremationPermit < ActiveRecord::Migration[5.0]
  def change
    create_table :cremation_permits do |t|
      t.string :next_of_kin
      t.string :address
      t.string :name_of_decease
      t.string :location_of_death
      t.date :date_of_death
      t.string :relationship

      t.timestamps null: false
    end
  end
end
