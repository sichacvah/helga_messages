class Variant < ActiveRecord::Base
  belongs_to :product

  mount_uploader :image, ImageUploader
end
