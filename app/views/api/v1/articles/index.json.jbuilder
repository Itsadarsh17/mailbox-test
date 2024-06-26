json.articles @articles.each do |article|
  json.partial!('info', article:)
end
