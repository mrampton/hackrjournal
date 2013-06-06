require 'spec_helper'

describe "StaticPages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Welcome') }
    it { should have_title(ENV['BRAND']) }
    it { should_not have_title("Home") }
  end

  describe "Help page" do
    before { visit help_path }
    
    it { should have_selector('h1', text: 'Help') }
    it { should have_title("Help") }
  end
  
  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1', text: 'About Us')}
    it { should have_title('About') }
  end
  

end
