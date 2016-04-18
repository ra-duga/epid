json.array!(@employment_contracts) do |employment_contract|
  json.extract! employment_contract, :id, :date_start, :date_and
  json.url employment_contract_url(employment_contract, format: :json)
end
