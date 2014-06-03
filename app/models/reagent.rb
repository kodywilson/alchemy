class Reagent < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
end
