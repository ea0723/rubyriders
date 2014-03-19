class Company < ActiveRecord::Base
  attr_accessible :name, :city, :state, :industry, :size, :min_employees, :max_employees, :created_at, :modified_at



end
