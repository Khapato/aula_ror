class CreateRegistros < ActiveRecord::Migration[7.1]
  def change
    create_table :registros do |t|
      t.references :chave, null: false, foreign_key: true
      t.references :funcionario, null: false, foreign_key: true
      t.datetime :hora_retirada
      t.datetime :hora_devolucao

      t.timestamps
    end
  end
end
