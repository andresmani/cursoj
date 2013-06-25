class Estudiante < ActiveRecord::Base
  belongs_to :grupo
  belongs_to :tpodocumento
  attr_accessible :apellido, :cel, :direccion, :documento, :email, :fechana, :nombre, :nomfam, :tell1, :tell2, :tpodocumento_id, :grupo_id

  def self.search(search)
where('nombre like ? or documento like ? or email like ? ',"%#{search}%" ,"%#{search}%","%#{search}%")
end

end
