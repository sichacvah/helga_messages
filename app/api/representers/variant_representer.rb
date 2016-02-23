require 'roar/json'
module Representers
  module VariantRepresenter
    include Roar::JSON
    include Roar::Hypermedia
    include Grape::Roar::Representer

    property :id
    property :name
    property :description
    property :price
    property :image_url
  end
end
