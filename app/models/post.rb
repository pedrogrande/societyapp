class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :society
  attr_accessible :content, :title, :type

  default_scope order: 'posts.created_at DESC'

  def self.posts_for_users_societies(current_user)
    includes(:society => :users).where('users.id' => current_user.id)
  end
end
