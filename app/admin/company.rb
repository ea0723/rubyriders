ActiveAdmin.register Company do
#  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    column :name
    column :city
    column :state
    column :industry
    column "Created", :created_at
    column "Last Modified", :modified_at
    actions
  end

  filter :size
  filter :state
  filter :industry
  filter :created_at


  show do
    attributes_table do
      row :name
#      row do
#        column :city+:state.join(", "), :label => "Location"
#      end
      row :industry
      row :min_employees
      row :max_employees
      row :created_at, :label=> "Created"
      row :modified_at, :label => "Last Modified"
    end
  end



  form do |f|
    f.inputs "Company Details" do
      f.input :name
      f.input :city
      f.input :state
      f.input :industry
      f.input :size
      f.input :min_employees
      f.input :max_employees
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
