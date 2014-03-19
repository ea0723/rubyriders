ActiveAdmin.register User do
 permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    column "Name", (:first_name+:last_name.join(" "))
    column :email
    column :active do |value|
      value.active == 0 ? "No" : "Yes"
    end
    column "Created", :created_at
    column "Last Signed In", :last_sign_in_at
    actions
  end

  filter :active

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :email
      row :last_sign_in_at
    end
  end


  form do |f|
    f.inputs "User Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end