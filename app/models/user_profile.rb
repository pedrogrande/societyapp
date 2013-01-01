class UserProfile < ActiveRecord::Base
  belongs_to :user
  attr_accessible :about_me, :city, :country, :dob, :profile_pic, :sex
end
