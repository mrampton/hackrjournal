# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ActiveRecord::Base
  attr_accessible :content, :title

  validates :title, :presence => true, length: { minimum: 5, maximum: 110 }
end
