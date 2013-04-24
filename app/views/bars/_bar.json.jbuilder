json.bar do
  json.name bar.name
  json.id bar.id
  json.array! bar.beers do |beer|
    json.name beer.name
  end
end
