json.articles @articles.each do |article|
  json.partial!('info', article:)
end
json.pagination do
  json.extract! @pagination, :prev_url, :next_url, :count, :page, :next
end
