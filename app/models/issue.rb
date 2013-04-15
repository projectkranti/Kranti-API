class Issue < ActiveRecord::Base
  attr_accessible :title, :description, :image_url, :location
  default_scope order('created_at DESC')
end
