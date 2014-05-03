class Page < ActiveRecord::Base
  attr_accessible :content, :page_image, :permalink, :title#, :remove_page_image, :page_image_cache

  validates_uniqueness_of :permalink

  #mount_uploader :page_image, PageImageUploader

  def to_param
    permalink
  end
end
