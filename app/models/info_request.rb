class InfoRequest < ActiveRecord::Base
  attr_accessible :name, :email, :phone, :subject, :message, :nickname

  validates_presence_of :name
  validates_presence_of :email
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/
  validates_presence_of :message


end
