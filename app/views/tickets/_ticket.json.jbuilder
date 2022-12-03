json.extract! ticket, :id, :name, :price, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
