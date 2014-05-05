ActiveAdmin.register Testimonial do

  index do
    selectable_column
    column :content do |content|
      content.content.truncate(50).html_safe
    end
    column :name
    column :active
    default_actions
  end


  form do |f|
    f.inputs do
      f.input :name
      f.input :content, :as => :ckeditor, :input_html => { :ckeditor => { :height => 400 } }
      f.input :active
    end
    f.actions
  end


  show do |testimonial|
    attributes_table do
      row :id
      row :name
      row :active
      row :content do
        simple_format testimonial.content
      end
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
