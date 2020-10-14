class StandardsController < ApplicationController
  def index
    @standard = Standard.new
  end

  # def new
  #   @standard = Standard.new
  # end
end
