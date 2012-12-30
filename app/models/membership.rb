class Membership < ActiveRecord::Base
  belongs_to :user
  belongs_to :society
  # attr_accessible :title, :body
end
