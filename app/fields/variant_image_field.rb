require "administrate/fields/base"

class VariantImageField < Administrate::Field::Base
  def to_s
    data
  end
end
