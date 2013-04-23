class Issue < ActiveRecord::Base
  attr_accessible :title, :description, :image_url, :location, :user

  belongs_to :user

  default_scope order('created_at DESC')
end
