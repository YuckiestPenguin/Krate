json.extract! carrier, :id, :name, :carrier_type_id, :shipment_type_id, :created_at, :updated_at
json.url carrier_url(carrier, format: :json)