class CreateTouringRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :touring_routes do |t|
      t.string :touring_name
      t.string :touring_desc
      t.datetime :start_date
      t.datetime :end_date
      t.integer :start_lat
      t.integer :start_lon
      t.integer :end_lat
      t.integer :end_lon
      t.integer :wp1_lat
      t.integer :wp1_lon
      t.integer :wp2_lat
      t.integer :wp2_lon
      t.integer :wp3_lat
      t.integer :wp3_lon
      t.datetime :created_at
      t.datetime :updated_at
      t.references :rider, foreign_key: true

      t.timestamps
    end
  end
end
