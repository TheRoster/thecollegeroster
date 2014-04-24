class Athlete < ActiveRecord::Base
  validates :first_name, :last_name, :email, presence: true
  has_secure_password

  def initialize(athlete)
    athlete ||= Athlete.new
  end

  def full_name
    "#{first_name} #{last_name}"
  end

end
