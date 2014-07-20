class HighSchool < ActiveRecord::Base
  has_many :athletes

  accepts_nested_attributes_for :athletes
end

