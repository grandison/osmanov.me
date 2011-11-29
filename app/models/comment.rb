require 'carrierwave/orm/activerecord'
class Comment < ActiveRecord::Base
  mount_uploader :file, FileUploader
end
