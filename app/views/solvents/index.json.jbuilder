json.array!(@solvents) do |solvent|
  json.extract! solvent, :id, :name, :picture, :level
  json.url solvent_url(solvent, format: :json)
end
