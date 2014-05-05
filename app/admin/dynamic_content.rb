ActiveAdmin.register DynamicContent do

  index do
    selectable_column
    column :title
    column :key
    column :value do |value|
      value.value.truncate(50).html_safe
    end
    default_actions
  end


  form do |f|
    f.inputs do
      f.input :title
      f.input :key
      f.input :value, :as => :ckeditor, :input_html => { :ckeditor => { :height => 400 } }
    end
    f.actions
  end

  show do |content|
    attributes_table do
      row :id
      row :title
      row :key
      row :value
      row :created_at
      row :updated_at
    end
    active_admin_comments
  end
end
