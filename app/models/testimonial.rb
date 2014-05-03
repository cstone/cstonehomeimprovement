class Testimonial < ActiveRecord::Base
  attr_accessible :active, :content, :name

  scope :live, where(active: true)
end
