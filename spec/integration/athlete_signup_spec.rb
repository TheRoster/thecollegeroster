require 'spec_helper'

describe "signup page" do
  it "has a signup page" do
    visit root_path
    page.should have_content('Level the playing field.')
  end

  it "has a signup form" do
    expect(page).to have_selector(".form")
  end

  # it "displays the athletes name after successful signup" do
    # athlete = FactoryGirl.create(:athlete, :first_name => "scott", :last_name => "johnson", :email => "scottjohnson@gmail.com", :password => "secret")
    # visit "/"
    # fill_in "First Name", :with => "scott"
    # fill_in "Last Name", :with => "johnson"
    # fill_in "Email", :with => "scottjohnson@gmail.com"
    # fill_in "Password", :with => "secret"
    # click_button "Sign Up"

    # expect(page).to have_selector(#SOME SELECTOR)
  # end
end

