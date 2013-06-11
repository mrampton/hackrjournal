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

require 'spec_helper'

describe Post do
  
  before { @post = Post.create(title: "Example Post", content: "This is a blog post's content!")}
  subject { @post }

  it { should respond_to :title }
  it { should respond_to :content }

  describe "when title is blank" do 
    before { @post.title = " " }
    it { should_not be_valid }
  end
  
  describe "when title is too short" do
    before { @post.title = "shrt" }
    it { should_not be_valid }
  end
  
  describe "when title is too long" do
    before { @post.title = "a" * 111}
    it { should_not be_valid }
  end

  
end
