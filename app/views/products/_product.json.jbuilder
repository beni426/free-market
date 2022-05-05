json.extract! product, :id, :name, :description, :condition, :price, :delivery_charge, :shipping_area, :shipping_days, :created_at, :updated_at
json.url product_url(product, format: :json)
