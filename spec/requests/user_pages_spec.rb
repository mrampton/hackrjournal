require 'spec_helper'

describe "UserPages" do
  subject { page }
  
  describe "signup" do
    before { visit signup_path }
    
    let(:submit) { "Create my account" }
    
    it { should have_selector('h1', text: 'Sign up') }
    it { should have_title('Sign up') }
    
    describe "with blank form" do
      
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end
    
    describe "submitting valid information" do
      before do
        fill_in "Name",         with: "Example User"
        fill_in "Email",        with: "user@example.com"
        fill_in "user_password",     with: "foobar"
        fill_in "user_password_confirmation", with: "foobar"
      end
      
      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
      
      describe "after saving the user" do
        before { click_button submit }
        it { should have_link('Sign out') }
      end
      
    end
    
  end
  
  describe "profile page" do
    let(:user) { FactoryGirl.create(:user) }
    before { visit user_path(user) }
    
    it { should have_selector('h1', text: user.name) }
    it { should have_title(user.name) }
  end

end
