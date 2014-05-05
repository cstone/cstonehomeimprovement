ActiveAdmin.register Project do

  index do
    selectable_column
    column :project_image do |project|
      if project.project_image.url
        image_tag project.project_image.url(:thumb)
      end
    end
    column :title do |title|
      title.title.truncate(50).html_safe
    end
    column :title do |title|
      title.title.truncate(75).html_safe
    end
    default_actions
  end
  
  
  
  form do |f|
    f.inputs do
      f.input :title
      f.input :description, :as => :ckeditor, :input_html => { :ckeditor => { :height => 400 } }
      f.input :project_image, :as => :file, :hint => f.object.project_image.present? \
    ? f.template.image_tag(f.object.project_image.url(:thumb))
      : f.template.content_tag(:span, "no photo yet")
      f.input :project_image_cache, :as => :hidden
      f.input :remove_project_image, as: :boolean, label: 'Check here to remove the current image.'
    end
    f.actions
  end


  show do |project|
    attributes_table do
      row :id
      row :title
      row :description do
        simple_format project.title
      end
      row :project_image do
        if project.project_image.url
          image_tag project.project_image.url
        end
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
