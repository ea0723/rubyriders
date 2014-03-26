ActiveAdmin.register Investment do

  #menu :label => "Investments", :parent => "Users", :priority => 0

  # fields for reference :amt_invested, :inv_type, :capitalization, :funding_round, :investmt_date, :maturity, :conversion_trigger, :documents, :documents_cache, :remove_documents
  index do
    selectable_column
    column "Investor" do |investment|
      investment.user.to_s
    end
    column :company
    column :amt_invested do |investment|
      number_to_currency investment.amt_invested
    end
    column :inv_type
    column :capitalization do |investment|
      number_to_currency investment.capitalization
    end
    column :funding_round do |investment|
      number_to_currency investment.funding_round
    end
    column :investmt_date
    column :maturity
    column :conversion_trigger do |investment|
      number_to_currency investment.conversion_trigger
    end
    column "Documents" do |investment|
      investment.documents.to_s.split('/').last if investment.documents.present?
    end
    actions
  end


  #filter :max_employees

  show do
    attributes_table do
      row "Investor" do |investment|
        investment.user.to_s
      end
      row :company
      row :amt_invested do |investment|
        number_to_currency investment.amt_invested
      end
      row :inv_type
      row :capitalization do |investment|
        number_to_currency investment.capitalization
      end
      row :funding_round do |investment|
        number_to_currency investment.funding_round
      end
      row :investmt_date
      row :maturity
      row :conversion_trigger do |investment|
        number_to_currency investment.conversion_trigger
      end
      row "Documents" do |investment|
        investment.documents.to_s.split('/').last if investment.documents.present?
      end
      #end
    end
  end

  form do |f|
    f.inputs "Investment Details" do
      f.input :user
      f.input :company
      f.input :amt_invested
      f.input :inv_type
      f.input :capitalization
      f.input :funding_round
      f.input :investmt_date, :as => :datepicker
      f.input :maturity, :as => :datepicker
      f.input :conversion_trigger
      f.input :documents, :as => :file, :required => false, :multipart => true
      f.input :remove_documents, :as => :boolean, :required => false
    end
    f.actions
  end
  
  # Todo update datepicker fields to be inline vs. two separate rows
  #
  #
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
