class Issue < ActiveRecord::Base
  attr_accessible :title, :description, :image_url, :location
  before_save :upload_image_to_cloudinary

  private
  def upload_image_to_cloudinary

  end
end
