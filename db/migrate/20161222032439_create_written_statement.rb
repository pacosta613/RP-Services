class CreateWrittenStatement < ActiveRecord::Migration[5.0]
  def change
    create_table :written_statements do |t|
      t.string :next_of_kin
      t.string :name_of_decease
      t.date :date

      t.timestamps null: false
    end
  end
end
