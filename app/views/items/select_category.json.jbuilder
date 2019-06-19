json.array! @category.children do |child|
  json.id child.id
  json.name child.name
end