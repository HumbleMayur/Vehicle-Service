class HomeController < ApplicationController
  def index
  end

  def service
  end

  def create
    @user = User.new(user_params)
    @user.save
    unless  @user.save
      @error_message = errors.full_messages.compact
    end
  end
end
