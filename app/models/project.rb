class Project < ActiveRecord::Base
  attr_accessible :description, :project_image, :title, :remove_project_image, :project_image_cache

  mount_uploader :project_image, ProjectImageUploader
end
