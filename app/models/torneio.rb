class Torneio < ActiveRecord::Base
  attr_accessible :buyIn, :formato, :jogadoresPorMesa, :limite, :linkExterno, :moeda, :nome, :tipoPagamento, :velocidade
  
  validates_uniqueness_of :nome
end
