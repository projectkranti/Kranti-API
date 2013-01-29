class Issue < ActiveRecord::Base
  attr_accessible :title, :description, :image_url, :location
end
