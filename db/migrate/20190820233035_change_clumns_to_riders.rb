class ChangeClumnsToRiders < ActiveRecord::Migration[5.2]
  def up
        change_column :touring_routes , :touring_desc, :string

          t.string :rider_name
      t.string :email
      t.string :bike_name
      t.string :icon_file_name
      t.datetime :created_at
      t.datetime :updated_at
  end

  def down
  end
end
