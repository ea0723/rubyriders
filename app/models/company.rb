class Company < ActiveRecord::Base
  attr_accessible :name, :city, :state, :industry, :size, :min_employees, :max_employees, :created_at, :updated_at


  has_many :investments

  #
  #def company_name
  #  Company.
  #end


end
