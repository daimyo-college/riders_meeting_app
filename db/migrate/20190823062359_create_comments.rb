class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :touring_route, foreign_key: { to_table: :touring_routes }
      t.references :touring_route_rider, foreign_key: { to_table: :touring_routes }
      t.timestamps
    end
  end
end
