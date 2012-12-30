class HomeController < ApplicationController
  def index
    @user = current_user
    @societies = Society.all
  end
end
