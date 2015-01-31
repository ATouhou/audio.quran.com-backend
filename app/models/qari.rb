class Qari < ActiveRecord::Base
  self.table_name = 'qaris'

  has_many :audio_files, foreign_key: :qari_id
end
