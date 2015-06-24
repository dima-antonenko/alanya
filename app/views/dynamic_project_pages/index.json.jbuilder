json.array!(@dynamic_project_pages) do |dynamic_project_page|
  json.extract! dynamic_project_page, :id
  json.url dynamic_project_page_url(dynamic_project_page, format: :json)
end
