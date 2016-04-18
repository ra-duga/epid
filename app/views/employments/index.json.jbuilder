json.array!(@employments) do |employment|
  json.extract! employment, :id, :first_name, :second_name, :third_name, :photo, :birth_date, :decription
  json.url employment_url(employment, format: :json)
end
