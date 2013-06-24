class Programa < ActiveRecord::Base
	has_many :estudiantes
  attr_accessible :nombre, :observaciones, :precio
end
