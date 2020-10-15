class EtroitesController < ApplicationController
  def index
    @etroite = Etroite.new
  end
end
