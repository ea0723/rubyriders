ActiveAdmin.register User do
 permit_params :first_name, :last_name, :email, :password, :password_confirmation

  index do
    selectable_column
    column :first_name
    column :last_name
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
    f.semantic_errors *f.object.errors.keys
    f.inputs "User Details" do
      f.input :first_name
      f.input :last_name
      f.input :email
      if f.object.new_record?
        f.input :password
        f.input :password_confirmation
      end
      f.input :active, :default => true, :hidden => true
    end
    f.actions

  end

  controller do
    def update
      params[:user][:password] = params[:user][:password_confirmation] = nil if params[:user][:password].blank?

      begin
        User.find(params[:id]).update!(params[:user])
      rescue Exception => e
        error_message = e.message
      end

      redirect_to admin_user_path(params[:id]), :notice => ("Successfully updated!" unless error_message),
                  :alert => error_message
    end
  end

end

