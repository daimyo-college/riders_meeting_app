class AddFkeyToTouringRoute < ActiveRecord::Migration[5.2]
  def change
    add_reference :touring_routes ,:users ,index: true
    add_reference :comments ,:users ,index: true
    add_reference :comments ,:touring_routes ,index: true
  end
end
