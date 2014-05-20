class Athlete < ActiveRecord::Base
  before_save { self.email = email.downcase }
  before_create :create_remember_token

  validates :first_name, :last_name, :email, presence: true
  validates_uniqueness_of :email

  has_many :relationships, foreign_key: "fan_id", dependent: :destroy
  has_many :fans, through: :relationships
  has_many :reverse_relationships, foreign_key: "follow_id", class_name: "Relationship", dependent: :destroy
  has_many :follows, through: :reverse_relationships
  has_many :stats,  dependent: :destroy

  belongs_to :high_school
  belongs_to :sport
  belongs_to :position

  delegate :name, to: :high_school
  delegate :name, to: :stat

  accepts_nested_attributes_for :high_school
  accepts_nested_attributes_for :sport
  accepts_nested_attributes_for :position

  has_attached_file :avatar, :styles => { :medium => "350X350>", :thumb => "100X100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_secure_password

  def athlete_last_stat
    if stats.first.nil?
      "No stats yet!"
    else
      "#{stats.first.stat_name} #{stats.first.value}"
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def Athlete.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def Athlete.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  def fan?(other_athlete)
    relationships.find_by(fan_id: other_athlete.id)
  end

  def follow!(other_athlete)
    relationships.create!(follow_id: other_athlete.id)
  end

  def unfollow!(other_athlete)
    relationships.find_by(follow_id: other_athlete.id).destroy
  end

  private

  def create_remember_token
    self.remember_token = Athlete.digest(Athlete.new_remember_token)
  end

end
