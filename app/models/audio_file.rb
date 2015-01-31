class AudioFile < ActiveRecord::Base
  self.table_name = 'audio_files'

  belongs_to :qari, primary_key: :qari_id
  belongs_to :surah, foreign_key: :sura_number
end
