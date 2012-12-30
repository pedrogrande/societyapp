class Society < ActiveRecord::Base
  extend FriendlyId
  friendly_id :name, use: :slugged

  acts_as_taggable_on :location, :category

  attr_accessible :name, :slug, :location_list, :category_list

  has_many :memberships
  has_many :users, :through => :memberships

  validates_presence_of :name
  validates_uniqueness_of :name, :case_sensitive => false

  def in_society?(user)
    self.users.include?(user)
  end
end
