class EventInvitation < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
  attr_accessible :status
end
