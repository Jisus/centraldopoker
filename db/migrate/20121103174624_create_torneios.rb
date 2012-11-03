class CreateTorneios < ActiveRecord::Migration
  def change
    create_table :torneios do |t|
      t.string :nome
      t.string :limite
      t.string :buyIn
      t.string :tipoPagamento
      t.string :velocidade
      t.string :moeda
      t.string :formato
      t.string :jogadoresPorMesa
      t.string :linkExterno

      t.timestamps
    end
  end
end
