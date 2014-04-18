require 'test_helper'

class AthleteTest < ActiveSupport::TestCase
  fixtures :athletes

  test "the truth" do
    assert true
  end

  test "athlete should save without a first name, last name, and email" do
    athlete = Athlete.new
    assert_not athlete.save
  end

end
