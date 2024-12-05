class CreateChaves < ActiveRecord::Migration[7.1]
  def change
    create_table :chaves do |t|
      t.string :identificador
      t.string :descricao

      t.timestamps
    end
  end
end
