class Qari < ActiveRecord::Base
  self.table_name = 'qaris'

  has_many :audios, foreign_key: :qari_id
end
