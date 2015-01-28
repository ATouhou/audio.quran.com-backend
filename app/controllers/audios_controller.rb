class AudiosController < ApplicationController
  def index
    @qari = Qari.find(params[:qari_id])
    @audios = @qari.audios.select("audios.*, surahs.*").joins(:surah)
  end

  def show
    @qari = Qari.find(params[:qari_id])
    @audio = @qari.audios.find(params[:id])
  end
end
