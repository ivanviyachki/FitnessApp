json.extract! exercise, :id, :name, :description, :difficulty, :exercise_category_id, :created_at, :updated_at
json.url exercise_url(exercise, format: :json)
