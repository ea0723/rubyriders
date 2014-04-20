ActiveAdmin.register InfoRequest do

  config.clear_action_items!
  actions :all, :except => [:new, :edit]

  index do
    selectable_column
    column "Created", :created_at
    column :name
    column :email
    column :subject
    actions
  end

  filter :email
  filter :created_at

  show :title => :subject do
    attributes_table do
      row :created_at
      row :name
      row :email, :as => :mailto
      row :subject
      row :message
      action do

      end
    end
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
