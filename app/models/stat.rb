class Stat < ActiveRecord::Base
  # validates :athlete_id, presence: true

  # default_scope -> { order('created_at DESC') }

  belongs_to :athlete
  belongs_to :sport
end
