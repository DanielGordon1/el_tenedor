class Admin::RestaurantsController < ApplicationController
  # before_action :validate_admin
  def index
    # @restaurants = Restaurant.where(user: current_user)
    @restaurants = Restaurant.all
  end
  private

  def validate_admin
    redirect_to root_path unless user.admin == true
  end
end
