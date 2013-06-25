class Grupo < ActiveRecord::Base
  belongs_to :programa
  attr_accessible :ficha, :programa_id

  validates :ficha, :presence=>true,
	:length => { :minimum =>3, :maximum => 80 }

	validates :programa, :presence=>true,
	:length => { :minimum =>3, :maximum => 80 }

end

