json.array! @bars do |bar|
  json.partial! 'bar', bar: bar
end
