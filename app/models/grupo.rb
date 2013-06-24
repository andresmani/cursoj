class Grupo < ActiveRecord::Base
  belongs_to :programa
  attr_accessible :ficha, :programa_id
end
