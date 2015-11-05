json.array!(@items) do |item|
  json.extract! item, :id, :name, :description, :condition, :value, :category, :image, :user_id
  json.url item_url(item, format: :json)
end
