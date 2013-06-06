require 'spec_helper'

describe "StaticPages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(title) }
  end

  describe "Home page" do
    before { visit root_path }
    let(:heading) { 'Welcome' }
    let(:title) { TITLE }
    
    it_should_behave_like "all static pages"
    it { should_not have_title("Home") }
  end

  describe "Help page" do
    before { visit help_path }
    let(:heading) { 'Help' }
    let(:title) { full_title('Help') }

    it_should_behave_like "all static pages"
  end
  
  describe "About page" do
    before { visit about_path }
    let(:heading) { 'About Us' }
    let(:title) { full_title('About') }
    
    it_should_behave_like "all static pages"
  end

  it "should have the right links on the layout" do
    visit root_path
    click_link "About"
    page.should have_title(full_title('About Us'))
    visit root_path
    click_link "Sign up!"
    page.should have_title(full_title('Sign up'))
    click_link BRAND
    page.should have_title(full_title)
  end
  

end
