
class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def home
    @user = User.find_by_id(params[:id])
  end


end
