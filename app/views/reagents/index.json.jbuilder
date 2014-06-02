json.array!(@reagents) do |reagent|
  json.extract! reagent, :id, :name, :picture, :trait_1, :trait_2, :trait_3, :trait_4
  json.url reagent_url(reagent, format: :json)
end
