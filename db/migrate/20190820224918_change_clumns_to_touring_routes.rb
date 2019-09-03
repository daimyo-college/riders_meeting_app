class ChangeClumnsToTouringRoutes < ActiveRecord::Migration[5.2]
  def up
    change_column :touring_routes , :touring_desc, :text
    change_column :touring_routes , :start_lat, :float, limit:53
    change_column :touring_routes , :start_lon, :float, limit:53
    change_column :touring_routes , :end_lat, :float, limit:53
    change_column :touring_routes , :end_lon, :float, limit:53
    change_column :touring_routes , :wp1_lat, :float, limit:53
    change_column :touring_routes , :wp1_lon, :float, limit:53
    change_column :touring_routes , :wp2_lat, :float, limit:53
    change_column :touring_routes , :wp2_lon, :float, limit:53
    change_column :touring_routes , :wp3_lat, :float, limit:53
    change_column :touring_routes , :wp3_lon, :float, limit:53
  end
  def down
    change_column :touring_routes , :touring_desc, :string
    change_column :touring_routes , :start_lat, :integer
    change_column :touring_routes , :start_lon, :integer
    change_column :touring_routes , :end_lat, :integer
    change_column :touring_routes , :end_lon, :integer
    change_column :touring_routes , :wp1_lat, :integer
    change_column :touring_routes , :wp1_lon, :integer
    change_column :touring_routes , :wp2_lat, :integer
    change_column :touring_routes , :wp2_lon, :integer
    change_column :touring_routes , :wp3_lat, :integer
    change_column :touring_routes , :wp3_lon, :integer
  end
end
