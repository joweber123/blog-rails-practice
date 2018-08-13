json.extract! answer, :id, :title, :author, :body, :created_at, :updated_at
json.url answer_url(answer, format: :json)
