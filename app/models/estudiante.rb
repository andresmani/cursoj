class Estudiante < ActiveRecord::Base
  belongs_to :grupo
  belongs_to :tpodocumento
  attr_accessible :cel, :direccion, :documento, :email, :fechana, :nombre, :nomfam, :tell1, :tell2, :tpodocumento_id, :grupo_id
end
