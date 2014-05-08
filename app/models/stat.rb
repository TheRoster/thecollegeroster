class Stat < ActiveRecord::Base
  belongs_to :sport
  belongs_to :athlete
  belongs_to :position
end
