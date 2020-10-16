class EtroitesController < ApplicationController
  def index
    @etroite = Etroite.new
  end

  def create
      Etroite.destroy_all
      @etroite  = Etroite.new(etroite_params)
      if @etroite.save
        redirect_to answer2_index_path
      else
        render :new
      end
  end

  def show
    @etroite  = Etroite.find(params[:id])
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
