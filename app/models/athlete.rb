class Athlete < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_create :create_remember_token

  validates :first_name, :last_name, :email, presence: true
  validates_uniqueness_of :email

  has_secure_password

  def full_name
    "#{first_name} #{last_name}"
  end

  def Athlete.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Athlete.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

  def create_remember_token
    self.remember_token = Athlete.digest(Athlete.new_remember_token)
  end

end
