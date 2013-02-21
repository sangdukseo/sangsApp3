require 'spec_helper'

describe "Static pages" do
describe "Home page" do

  	it "should have the h1 'Home'" do
  		visit '/static_pages/home'
  		page.should have_selector('h1', :text => 'Home')
    end

    it "should have the title 'Home'" do
    	visit '/static_pages/home'
    	page.should have_selector('title',
    		:text => "Sang's Rails Site | Home")
    end
  end

  describe "Help page" do
  	it "should have the h1 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('h1', :text => 'Help')
  	end

  	it "should have the title 'Help'" do
  		visit '/static_pages/help'
  		page.should have_selector('title',
  			:text => "Sang's Rails Site | Help")
  	end
  end

  describe "About page" do
  	it "should have the h1 'About Me'" do
  		visit '/static_pages/about'
  		page.should have_selector('h1', :text => 'About Me')
  	end

  	it "should have the title 'About Me'" do
  		visit '/static_pages/about'
  		page.should have_selector('title',
  			:text => "Sang's Rails Site | About Me")
	end
  end
end