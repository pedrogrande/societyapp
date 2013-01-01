class UsersController < ApplicationController
  before_filter :authenticate_user!

    # GET /users/1/groups
  def groups
    @user = current_user
    @groups = @user.groups
  end

  def index
    @users = User.all
  end

  def show
    @user = current_user
  end
end
