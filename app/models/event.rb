class Event < ActiveRecord::Base
  belongs_to :society
  has_many :event_invitations
  has_many :users, :through => :event_invitations


  attr_accessible :date, :description, :finish_time, :location, :start_time, :title, :type, :user_ids
end
