class Post < ActiveRecord::Base
  attr_accessible :content, :title
  
  validates :title, :presence => true, :length => {:minimum => 5}
  
end
