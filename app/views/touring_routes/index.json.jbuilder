# json.array! @touring_routes, partial: "touring_routes/touring_route", as: :touring_route
json.array!(@touring_routes) do |route|
  # product一覧のid, name , priceを取得する
  # => [{id: 1, name: "TEST", price: 100, category_id: 1}, ...]
  json.extract! route, :id, :touring_name, :touring_desc
end