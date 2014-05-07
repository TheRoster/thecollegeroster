class Game < ActiveRecord::Base
  belongs_to :athlete
  belongs_to :sport
end
