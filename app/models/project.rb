class Project < ActiveRecord::Base
  attr_accessible :description, :project_image, :title
end
