class InfoRequest < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :subject, :message

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :message



end
