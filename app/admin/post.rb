ActiveAdmin.register Post do
  permit_params :title, :markdown_content, :author, :approved, :video, :html_content

  index do
    column :title
    column :markdown_content
    column :author
    column :approved
    column :video
    default_actions
  end

  form do |f|
    f.inputs "Post Details" do
      f.input :title
      f.input :markdown_content
      f.input :author
      f.input :approved
      f.input :video
      f.input :html_content
    end
    f.actions
  end
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
