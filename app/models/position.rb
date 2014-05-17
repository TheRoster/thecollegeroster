class Position < ActiveRecord::Base
  has_many :athletes
  belongs_to :sport
end
