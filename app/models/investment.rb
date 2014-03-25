class Investment < ActiveRecord::Base

  belongs_to :user
  belongs_to :company

  attr_accessible :amt_invested, :inv_type, :capitalization, :funding_round, :investmt_date, :maturity, :conversion_trigger, :user_id, :company_id, :documents, :documents_cache, :remove_documents


  mount_uploader :documents, DocumentsUploader

  

end
