require 'roar/json'
module Representers
  module ProductRepresenter
    include Roar::JSON
    include Roar::Hypermedia
    include Grape::Roar::Representer

    property :name
    property :id
    property :min

    collection :variants, extend: VariantRepresenter, class: Variant
  end
end
