json.extract! client, :id, :name, :surname, :fiscalCode, :hourTariff, :created_at, :updated_at
json.url client_url(client, format: :json)
