require 'spec_helper'

describe "signup page" do
  it "has a signup page" do
    binding.pry
    visit 'root_path'
    page.should have_content('Level the playing field.')
  end
end

