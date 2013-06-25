class Programa < ActiveRecord::Base
	has_many :estudiantes
  attr_accessible :nombre, :observaciones, :precio

  validates :nombre, :presence=>true,
	:length => { :minimum =>3, :maximum => 80 }

	validates :observaciones,
	:length => {  :maximum => 80 }

	validates :precio, :presence=>true,
	:length => { :minimum =>3, :maximum => 80 },
	:numericality => true

end
