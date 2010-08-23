class AttachmentFile < Asset
 
  # === List of columns ===
  # id : integer
  # data_file_name : string
  # data_content_type : string
  # data_file_size : integer
  # assetable_id : integer
  # assetable_type : string
  # type : string
  # locale : integer
  # user_id : integer
  # created_at : datetime
  # updated_at : datetime
  # =======================
 
  has_attached_file :data,
  :s3_credentials => "#{Rails.root}/config/s3.yml", :bucket => "dovetailtimbers",
  :storage => :s3,
  :path => "#{APP_NAME}/images/:id/:style_:basename.:extension",
  :styles => { :content => '575>', :thumb => '100x100', :med => '300x300' }
 
  validates_attachment_size :data, :less_than=>2.megabytes
 
  def url_content
    url(:content)
  end
 
  def url_thumb
    url(:thumb)
  end
  
  def url_thumb
    url(:med)
  end
end

