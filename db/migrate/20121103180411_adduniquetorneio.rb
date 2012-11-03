class Adduniquetorneio < ActiveRecord::Migration
  def up
    add_index :torneios, :nome, :unique => true
  end

  def down
  end
end
