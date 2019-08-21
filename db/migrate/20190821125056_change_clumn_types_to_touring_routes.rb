class ChangeClumnTypesToTouringRoutes < ActiveRecord::Migration[5.2]
  def up
    change_column :touring_routes , :start_lat, :decimal, precision: 11, scale: 8, null: true
    change_column :touring_routes , :start_lon, :decimal, precision: 11, scale: 8, null: true
    change_column :touring_routes , :end_lat, :decimal, precision: 11, scale: 8, null: true
    change_column :touring_routes , :end_lon, :decimal, precision: 11, scale: 8, null: true
    change_column :touring_routes , :wp1_lat, :decimal, precision: 11, scale: 8, null: true
    change_column :touring_routes , :wp1_lon, :decimal, precision: 11, scale: 8, null: true
    change_column :touring_routes , :wp2_lat, :decimal, precision: 11, scale: 8, null: true
    change_column :touring_routes , :wp2_lon, :decimal, precision: 11, scale: 8, null: true
    change_column :touring_routes , :wp3_lat, :decimal, precision: 11, scale: 8, null: true
    change_column :touring_routes , :wp3_lon, :decimal, precision: 11, scale: 8, null: true
  end
  def down
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
end
