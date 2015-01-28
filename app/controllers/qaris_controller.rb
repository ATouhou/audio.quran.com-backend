class QarisController < ApplicationController
  def index
    @qaris = Qari.all
  end

  def show
    @qari = Qari.find(params[:id])
  end
end
