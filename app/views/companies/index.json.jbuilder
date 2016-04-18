json.array!(@companies) do |company|
  json.extract! company, :id, :name, :description, :logotype, :url, :adress, :on_map, :phone
  json.url company_url(company, format: :json)
end
