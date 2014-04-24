ActiveAdmin.register InfoRequest do

  config.clear_action_items!                # removes Create New button from top-right of page
  actions :all, :except => [:new, :edit]    # prevents "new" and "edit" actions

  index do                                  # controls index page
    selectable_column
    column "Created", :created_at
    column :name
    column :email
    column :subject
    actions                                 # displays actions as specified in line 4
  end

  filter :name                              # always create a filter to prevent default filters
  filter :email

  show :title => :subject do                # controls view of individual record page
    attributes_table do                     # controls individual record display
      row :created_at
      row :name
      row :email
      row :subject
      row :message
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
