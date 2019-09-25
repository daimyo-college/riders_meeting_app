class AddFkeyToTouringRoute < ActiveRecord::Migration[5.2]
  def change
    add_reference :touring_routes ,:user ,index: true
    add_reference :comments ,:user ,index: true
    # add_reference :comments ,:touring_route ,index: true
  end
end
