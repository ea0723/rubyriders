class Investment < ActiveRecord::Base

  belongs_to :user
  belongs_to :company

  attr_accessible :amt_invested, :inv_type, :capitalization, :funding_round, :investmt_date, :maturity, :conversion_trigger, :user_id, :company_id, :documents, :documents_cache, :remove_documents


  mount_uploader :documents, DocumentsUploader

  validates_presence_of :user
  validates_presence_of :company

  #def document_filename
  #  "#{__FILE__.documents.documents}".to_str
  #  #params[:investment][:documents].original_filename
  #end


end
