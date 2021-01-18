class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.references :user,      null: false, foreign_key: true
      t.integer :day,          null: false
      t.string :time_type,     null: false
      t.timestamps
    end
  end
end
