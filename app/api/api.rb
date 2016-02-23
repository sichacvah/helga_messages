class API < Grape::API
  prefix 'api'
  version 'v1', using: :path
  format :json
  formatter :json, Grape::Formatter::Roar
  content_type :json, 'application/json; charset=utf-8'

  mount Market::ProductsData
end
