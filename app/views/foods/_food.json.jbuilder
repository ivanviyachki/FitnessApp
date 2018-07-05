json.extract! food, :id, :name, :calories, :fat, :protein, :carbs, :fiber, :food_category_id, :created_at, :updated_at
json.url food_url(food, format: :json)
