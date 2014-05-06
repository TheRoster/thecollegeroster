class Relationship < ActiveRecord::Base
  belongs_to :fan, class_name: "Athlete"
  belongs_to :followed, class_name: "Athlete"
  validates :fan_id, presence: true
  validates :follow_id, presence: true
end
