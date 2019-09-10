class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :comment
      t.references :touring_route, foreign_key: true
      t.references :rider, foreign_key: true
      t.timestamps
    end
  end
end
