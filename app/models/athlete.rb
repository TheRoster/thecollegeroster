class Athlete < ActiveRecord::Base
  attr_accessor :first_name, :last_name, :email

  validates :first_name, :last_name, :email, presence: true


end
