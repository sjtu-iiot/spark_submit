class Spark < ActiveRecord::Base
  mount_uploader :jarfile, JarfileUploader
end
