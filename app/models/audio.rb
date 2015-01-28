class Audio < ActiveRecord::Base
  self.table_name = 'audios'

  belongs_to :qari, primary_key: :qari_id
  belongs_to :surah, foreign_key: :sura_number
end
