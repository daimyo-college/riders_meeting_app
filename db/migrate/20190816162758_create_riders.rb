class CreateRiders < ActiveRecord::Migration[5.2]
  def change
    create_table :riders do |t|
      t.string :rider_name
      t.string :email
      t.string :bike_name
      t.string :icon_file_name
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
