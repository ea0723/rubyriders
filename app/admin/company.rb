ActiveAdmin.register Company do
#  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    column :name
    column :city
    column :state
    column :industry
    column :twitter
    column "LinkedIn", :linkedin
    column "Created", :created_at
    column :updated_at
    actions
  end

  filter :size
  filter :state
  filter :industry
  #filter :min_employees
  #filter :max_employees

  show :title => :name do
    attributes_table do
      row :name
      row :city
      row :state
      row :industry
      row :min_employees
      row :max_employees
      row :twitter
      row :linkedin, :label => "LinkedIn"
      row :created_at, :label=> "Created"
      row :updated_at, :label => "Last Modified"
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
      f.input :twitter
      f.input :linkedin, :as => :url
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
