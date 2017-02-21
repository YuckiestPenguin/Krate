json.extract! shipment_category, :id, :name, :shipment_type_id, :created_at, :updated_at
json.url shipment_category_url(shipment_category, format: :json)