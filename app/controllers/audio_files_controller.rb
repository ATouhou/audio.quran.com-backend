class AudioFilesController < ApplicationController
  def index
    @qari = Qari.find(params[:qari_id])
    @files = @qari.audio_files.select("audio_files.*, surahs.*").joins(:surah)
  end

  def show
    @qari = Qari.find(params[:qari_id])
    @file = @qari.files.find(params[:id])
  end
end
