class HomeController < ApplicationController
  def index
    @user = current_user
    @societies = Society.all
    @user_visible_posts = Post.posts_for_users_societies(current_user)
  end
end
