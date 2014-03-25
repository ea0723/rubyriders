class Investment < ActiveRecord::Base

  belongs_to :user
  belongs_to :company

  attr_accessible :amt_invested, :inv_type, :capitalization, :funding_round, :investmt_date, :maturity, :conversion_trigger, :user_id, :company_id, :documents, :documents_cache, :remove_documents


  mount_uploader :documents, DocumentsUploader

  #has_attached_file :documents, :content_type => ["application/pdf", "application/doc", "application/docx"]
  #validates_attachment :documents, :content_type => ["application/pdf", "application/doc", "application/docx"]
  #validates_attachment_file_name :documents, content_type: { content_type: "application/pdf" }


  #def investor_name
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
