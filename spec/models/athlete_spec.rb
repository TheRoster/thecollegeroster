require 'spec_helper'

describe Athlete do
  it "has a first name, last name and email" do
    scott = Athlete.create!(first_name: "Scott", last_name: "Johnson", email: "scottjohnson@gmail.com")
    jim = Athlete.create!(first_name: "Jim", last_name: "Robinson", email: "jimrobinson@gmail.com")

    expect(jim.first_name).to eq("Jim")
    expect(scott.last_name).to eq("Johnson")
    expect(jim.email).to eq("jimrobinson@gmail.com")
  end
end
