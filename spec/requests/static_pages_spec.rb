require 'spec_helper'

describe "StaticPages" do
  describe "Home page" do
    it "should have the content 'Your Path'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Your Path')
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end
  end
  
  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('h1', :text => 'About Us')
    end
  end
  
  ['about', 'help', 'home'].each do |p|
    describe "#{p.capitalize}" do
      it "should have the right title" do
        visit "/static_pages/#{p}"
        page.should have_title("#{ENV['BRAND']} | #{p.capitalize}")
      end
    end
  end


end
