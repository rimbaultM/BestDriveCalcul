class StandardsController < ApplicationController
  def index
    @standard = Standard.new
  end

  def create
      Standard.destroy_all
      @standard = Standard.new(standard_params)
      if @standard.save
        redirect_to answer_index_path
      else
        render :new
      end
  end

  def show
    @standard = Standard.find(params[:id])
  end

  private
  def standard_params
    params.require(:standard).permit(
      :jantelargeur,
      :janteexterieur,
      :jantesepaisseur,
      :voilecreux,
      :voileepaisseur,
      :fam
    )
  end

end
