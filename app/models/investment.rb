class Investment < ActiveRecord::Base

  belongs_to :user
  #belongs_to :company

  attr_accessible :amt_invested, :inv_type, :capitalization, :funding_round, :investmt_date, :maturity, :conversion_trigger, :user #, :investor




  #def display_name
  #  ["#{user.first_name}", "#{user.last_name}"].join(" ")
  #end

  #def company_name
  #
  #
  #end
  #
  #def user_name
  #
  #end

end
