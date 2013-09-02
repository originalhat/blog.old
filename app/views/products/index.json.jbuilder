json.array!(@products) do |product|
  json.extract! product, :quantity, :name
  json.url product_url(product, format: :json)
end
