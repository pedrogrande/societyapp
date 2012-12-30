class User < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :slug
  # attr_accessible :title, :body

  validates_presence_of :name
  validates_uniqueness_of :name, :email, :case_sensitive => false

  has_many :memberships
  has_many :societies, :through => :memberships

  # is person in given society?
  def is_member?(society)
    self.societies.include?(society)
  end
end
