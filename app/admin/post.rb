ActiveAdmin.register Post do
  permit_params :title, :content, :author

  index do
    column :title
    column :content
    column :author
    default_actions
  end

  form do |f|
    f.inputs "Post Details" do
      f.input :title
      f.input :content
      f.input :author
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
