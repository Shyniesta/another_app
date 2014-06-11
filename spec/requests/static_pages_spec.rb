require 'spec_helper'

describe "StaticPages" do

  let :base_title do
    "RnR Sample Application"
  end


  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Welcome') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_content('About Us') }
    it { should have_title(full_title('About Us')) }
  end

  describe "Contact" do
    before { visit contact_path }

    it { should have_content('Contact') }
    it { should have_title(full_title('Contact')) }
  end

end

=begin    
  	it "should have the content 'Another App'" do
      visit root_path
      expect(page).to have_content('Welcome')
  	end

    it "should have the right title" do
      visit root_path
      expect(page).to have_title("#{base_title}")
    end
    it "should not have the custom title" do
      visit root_path
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do
    it "shoult have the content 'Help'" do
      visit help_path
      expect(page).to have_content('Help')
    end

    it "should have the right title" do
      visit help_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Help")
    end
  end
 end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit about_path
      expect(page).to have_content('About Us')
    end

    it "should have the right title" do
      visit about_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | About Us")
    end
  end

  describe ("Contact page") {
    it ("should have the content 'Contact'") {
#      visit '/static_pages/contact'
      visit contact_path
      expect(page).to have_content('Contact')
    }

    it ("should have the right title") {
#      visit '/static_pages/contact'
      visit contact_path
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    }
  }
=end


