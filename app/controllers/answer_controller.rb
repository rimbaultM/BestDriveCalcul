class AnswerController < ApplicationController

  def index
    @standard = Standard.first
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
