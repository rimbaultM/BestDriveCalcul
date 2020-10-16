class Answer2Controller < ApplicationController
   def index
    @etroite = Etroite.first
  end

  private
  def etroite_params
    params.require(:etroite).permit(
      :jantelargeur,
      :janteexterieur,
      :jantesepaisseur,
      :voilecreux,
      :voileepaisseur,
      :fam,
      :cic
    )
  end
end
