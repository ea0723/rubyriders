ActiveAdmin.register Investment do

#permit_params :amt_invested, :inv_type, :capitalization, :funding_round, :investmt_date, :maturity, :conversion_trigger,

  menu :label => "Investments", :parent => "Users", :priority => 0

  # fields for reference :amt_invested, :inv_type, :capitalization, :funding_round, :investmt_date, :maturity, :conversion_trigger,


  index do
    selectable_column
    column ("Investor"), :user
    #column :company.name #{ |company| link_to company.name, admin_company_path(company.id, ) }
    column :amt_invested do |amount|
      number_to_currency amount.amt_invested
    end
    column :inv_type
    column :capitalization do |capital|
      number_to_currency capital.capitalization
    end
    column :funding_round do |funding|
      number_to_currency funding.funding_round
    end
    column :investmt_date
    column :maturity
    column :conversion_trigger do |trigger|
      number_to_currency trigger.conversion_trigger
    end
    actions
  end


  #filter :max_employees

  show do
    attributes_table do
      row :user, :label => "Investor"
      #row :company
      row :amt_invested do |amount|
        number_to_currency amount.amt_invested
      end
      row :inv_type
      row :capitalization do |capital|
        number_to_currency capital.capitalization
      end
      row :funding_round do |funding|
        number_to_currency funding.funding_round
      end
      row :investmt_date
      row :maturity
      row :conversion_trigger do |trigger|
        number_to_currency trigger.conversion_trigger
      end
    end
  end

  form do |f|
    f.inputs "Investment Details" do
      f.input "Investor", :as => :select, :collection => User.all, :include_blank => false
      #f.input :company, :as => :select, :collection => Company.all, :include_blank => false
      f.input :amt_invested
      f.input :inv_type
      f.input :capitalization
      f.input :funding_round
      f.input :investmt_date
      f.input :maturity
      f.input :conversion_trigger
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
