class Investment < ActiveRecord::Base
  attr_accessible :amt_invested, :inv_type, :capitalization, :funding_round, :investmt_date, :maturity, :conversion_trigger, :company

  (belongs_to :user)
  (belongs_to :company)

  def company_name


  end

end
