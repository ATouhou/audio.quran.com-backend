class Surah < ActiveRecord::Base
  self.table_name = 'surahs'
  has_many :audio_files, foreign_key: :sura_number
end
