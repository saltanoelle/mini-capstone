require 'rails_helper'

RSpec.describe "Logins", type: :request do


  describe "User Login" do
  	it "allows user to log in" do
      get "/login"
      click_button "Log In"
      fill_in "Email", :with => user.email
      fill_in "Password", :with => user.password

    end
  end
end
