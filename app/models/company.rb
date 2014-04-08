class Company < ActiveRecord::Base
  attr_accessible :name, :city, :state, :industry, :size, :min_employees, :max_employees, :created_at, :updated_at, :twitter, :linkedin


  has_many :investments

  validates_presence_of :name


end
