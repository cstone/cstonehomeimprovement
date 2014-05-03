class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_dynamic_content

  def get_dynamic_content
    @site_title = DynamicContent.get_value(:site_title)
    @home_title = DynamicContent.get_value(:home_title)
    @home_content = DynamicContent.get_value(:home_content)
    @contact_name = DynamicContent.get_value(:contact_name)
    @contact_content = DynamicContent.get_value(:contact_content)
    @project_content = DynamicContent.get_value(:project_content)
    @testimonial_content = DynamicContent.get_value(:testimonial_content)
  end
end
